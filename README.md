# Editlines

Extends core File class with File.editlines to edit lines in place.
File.editlines works like File.foreach except that the return value of its
associated block replaces each line in place.

## Installation

    $ gem install editlines

## Usage

Given a file such as the following one:
```
$ cat myfile.txt
first line
second line
third line
```

Running this...
```ruby
require 'editlines'

File.editlines('myfile.txt') do |line|
  line.capitalize
end
```

will replace each line of myfile.txt in place with the return value of the
associated block. In this case, we capitalized the first letter of each line.
```
$ cat myfile.txt
First line
Second line
Third line
```
