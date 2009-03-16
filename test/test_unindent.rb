require 'pathname'
root  =  Pathname(__FILE__).dirname.parent
require root.join('test/test_helper')
require root.join('lib/unindent')

class UnindentTest < Test::Unit::TestCase
  context "Unindent" do
    context "simple indentation" do
      test "removes space indentation" do
        source = "\s\sabc"
        expect = "abc"
        source.unindent.should be(expect)
      end
      test "removes tab indentation" do
        source = "\tabc"
        expect = "abc"
        source.unindent.should be(expect)
      end
      test "removes space/tab indentation" do
        source = "\t\s\sabc"
        expect = "abc"
        source.unindent.should be(expect)
      end
    end
    context "multiple lines" do
      test "removes indentation" do
        source = "\tabc\n\tabc"
        expect = "abc\nabc"
        source.unindent.should be(expect)
      end
      test "keeps relative indentation" do
        source = "\tabc\n\t\tabc"
        expect = "abc\n\tabc"
        source.unindent.should be(expect)
      end
      test "ignores blank lines for indent calculation" do
        source = "\n\tabc\n\n\t\tabc\n"
        expect = "\nabc\n\n\tabc\n"
        source.unindent.should be(expect)
      end
    end
    test "modifies string in-place" do
      source = "\s\sabc"
      expect = "abc"
      source.unindent!
      source.should be(expect)
    end
  end
end
