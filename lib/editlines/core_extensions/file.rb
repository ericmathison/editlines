require 'tempfile'
require 'fileutils'

class File
  def self.editlines(filename)
    tmp_file = ::Tempfile.new('tmp')
    open(tmp_file, 'w') do |file|
      foreach(filename) { |line| file.write yield(line) }
    end
    FileUtils.move(tmp_file, filename)
  end
end
