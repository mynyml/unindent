class String
  def unindent
    indent = squeeze("\n").lines.map {|line| line.index(/[^\s]/) }.compact.min || 0
    gsub(/^[[:blank:]]{#{indent}}/, '')
  end
  def unindent!
    replace(unindent)
  end
end
