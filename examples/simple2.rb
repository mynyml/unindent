require 'pathname'
root  =  Pathname(__FILE__).dirname.parent
require root.join('lib/unindent')

class Linker
  def self.parse(text)
    #text.gsub(%r%http://([^\s]+)%, <<-STR.unindent)
    #  <a href="http://\1">
    #    \1
    #  </a>
    #STR
  end
end

puts Linker.parse("find all you need at http://example.com")
