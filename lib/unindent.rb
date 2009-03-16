module Unindentation
  def unindent
    indent = self.select {|line| !line.strip.empty? }.map {|line| line.index(/[^\s]/) }.compact.min
    self.gsub(/^[[:blank:]]{#{indent}}/, '')
  end
  def unindent!
    self.replace(self.unindent)
  end
end

String.class_eval { include Unindentation }
