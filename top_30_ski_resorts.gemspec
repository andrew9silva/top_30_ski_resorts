
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "top_30_ski_resorts/version"

Gem::Specification.new do |spec|
  spec.name          = "top_30_ski_resorts"
  spec.version       = Top30SkiResorts::VERSION
  spec.authors       = ["'Andrew Silva'"]
  spec.email         = ["'andrewsilva9@gmail.com'"]

  spec.summary       = %q{This Ruby Gem provides a CLI to view ski resorts from https://www.zrankings.com/.}
  spec.homepage      = "https://github.com/andrew9silva/top_30_ski_resorts"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_dependency "nokogiri"
end
