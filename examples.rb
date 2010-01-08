require 'pathname'
require  Pathname(__FILE__).dirname.parent + 'lib/unindent'

class Profile
  def default_text
    <<-STR
      Anonymous Coward
        - Community Guest
    STR
  end
end

puts Profile.new.default_text
#      Anonymous Coward
#        - Community Guest

puts Profile.new.default_text.unindent
#Anonymous Coward
#  - Community Guest

