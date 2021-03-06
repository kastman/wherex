$:.push File.expand_path("../lib", __FILE__)
require "wherex/version"

Gem::Specification.new do |s|
  s.name        = "wherex"
  s.version     = Wherex::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jason King"]
  s.email       = ["jk@handle.it"]
  s.homepage    = "http://github.com/smathy/wherex"
  s.license     = "MIT"
  s.summary     = %q{Regexp for ActiveRecord finders}
  s.description = %q{This gem allows you to pass a Regexp as the value for any finder in ActiveRecord - Rails3 only}

  s.rubyforge_project = "wherex"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'arel', '~> 2.0'
  s.add_dependency 'activerecord', '~> 3.0'
end
