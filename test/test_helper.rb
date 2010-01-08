require 'nanotest'
begin
  require 'ruby-debug'
  require 'redgreen'       # gem: mynyml-redgreen
  require 'nanotest/focus' # gem: nanotest_extensions
  require 'nanotest/stats' # gem: nanotest_extensions
rescue LoadError, RuntimeError
  # pass
end

require 'unindent'

include Nanotest
