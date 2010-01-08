def gem_opt
  defined?(Gem) ? "-rubygems" : ""
end

# --------------------------------------------------
# Tests
# --------------------------------------------------
task(:default => :'test:all')

namespace(:test) do
  desc "Run tests"
  task(:all) do
    exit system("ruby #{gem_opt} -I.:lib test/test_unindent.rb")
  end

  desc "Run tests on multiple ruby versions (requires rvm)"
  task(:portability) do
    versions = %w( 1.8.6  1.8.7  1.9  1.9.2 )
    versions.each do |version|
      system <<-BASH
        bash -c 'source ~/.rvm/scripts/rvm;
                 rvm use #{version};
                 echo "--------- #{version} ----------";
                 rake -s test:all'
      BASH
    end
  end
end

# --------------------------------------------------
# Docs
# --------------------------------------------------
desc "Generate YARD Documentation"
task(:yardoc) do
  require 'yard'
  files   = %w( lib/**/*.rb )
  options = %w( -o doc/yard --readme README --files LICENSE )
  YARD::CLI::Yardoc.run *(options + files)
end
