require 'pathname'
root  =  Pathname(__FILE__).dirname.parent
require root.join('lib/unindent')

class Profile
  def default_text
    <<-STR
      Anonymous Coward
        - Community Guest
    STR
  end
end

puts Profile.new.default_text
puts Profile.new.default_text.unindent
