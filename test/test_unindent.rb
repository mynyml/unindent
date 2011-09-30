require 'test/test_helper'

## simple indentation

assert { "\s\sabc"  .unindent == "abc" } # removes space indentation
assert { "\tabc"    .unindent == "abc" } # removes tab indentation
assert { "\t\s\sabc".unindent == "abc" } # removes space/tab indentation
assert { ""         .unindent == ""    } # handles empty strings

## multi-line indentation

assert { "\tabc\n\tabc"        .unindent == "abc\nabc"         } # removes space/tab indentation
assert { "\tabc\n\t\tabc"      .unindent == "abc\n\tabc"       } # keeps relative indentation
assert { "\n\tabc\n\n\t\tabc\n".unindent == "\nabc\n\n\tabc\n" } # ignores blank lines for indent calculation

## unindent!

# test: modifies string in place
source = "\s\sabc"
source.unindent!
assert { source == "abc" }
