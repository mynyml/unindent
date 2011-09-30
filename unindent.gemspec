Gem::Specification.new do |s|
  s.name                = "unindent"
  s.version             = "1.0"
  s.summary             = "Ruby method to unindent strings."
  s.description         = "Ruby method to unindent strings. Useful for multiline strings embeded in already indented code."
  s.author              = "mynyml"
  s.email               = "mynyml@gmail.com"
  s.homepage            = "http://github.com/mynyml/unindent"
  s.rubyforge_project   = "unindent"
  s.has_rdoc            =  false
  s.require_path        = "lib"
  s.files               =  File.read("Manifest").strip.split("\n")

  s.add_development_dependency 'nanotest'
end
