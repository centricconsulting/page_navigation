lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'page_navigation/version'

Gem::Specification.new do |gem|
  gem.name          = 'centric_page_navigation'
  gem.version       = PageNavigation::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Jeffrey S. Morgan','Dmitry Sharkov', 'Joseph Ours']
  gem.email         = ['jeff.morgan@leandog.com', 'joseph.ours@centricconsulting.com']
  gem.homepage      = 'http://github.com/cheezy/page_navigation'
  gem.description   = %q{Provides basic navigation through a collection of items that use the PageObject pattern.}
  gem.summary       = %q{Provides basic navigation through a collection of items that use the PageObject pattern.}

  gem.rubyforge_project = 'centric_page_navigation'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'centric_data_magic', '>= 1.2'
  
  gem.add_development_dependency 'rspec', '>= 3.4.0'
end
