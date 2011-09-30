### Summary

Simple Ruby method, `String#unindent`, to unindent strings. Useful for
multi-line strings embeded in already indented code.

### Examples

```ruby
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
```

### Install

`gem install unindent`
