require 'spec_helper'
require 'tmpdir'
require 'tempfile'

describe File do
  describe '.editlines' do
    it 'modifies each line of file in place' do
      Dir.mktmpdir do |dir|
        Dir.chdir(dir) do
          test_file = Tempfile.new('test.txt')
          File.write(test_file.path, "first\nsecond\nthird\n")
          File.editlines(test_file.path) { |line| line.capitalize }
          expect(File.read(test_file.path)).to eq("First\nSecond\nThird\n")
        end
      end
    end
  end
end
