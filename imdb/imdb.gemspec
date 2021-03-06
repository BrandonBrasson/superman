
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "imdb/version"

Gem::Specification.new do |spec|
spec.name          = "Imdb"
spec.version       = Superman::VERSION
spec.authors       = ["'Brandon Brasson'"]
spec.email         = ["'rocksong622@gmail.com'"]

spec.summary       = %q{Imdb rocks}
spec.homepage      = "https://learn.co/tracks/full-stack-web-development-v5/object-oriented-ruby/final-projects/cli-data-gem-project"

# Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
# to allow pushing to a single host or delete this section to allow pushing to any host.
if spec.respond_to?(:metadata)
  spec.metadata["allowed_push_host"] = ""
else
  raise "RubyGems 2.0 or newer is required to protect against " \
    "public gem pushes."
end

spec.files         = `git ls-files -z`.split("\x0").reject do |f|
  f.match(%r{^(test|spec|features)/})
end
spec.bindir        = "exe"
spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
spec.require_paths = ["lib"]

spec.add_development_dependency 'nokogiri'
spec.add_development_dependency "bundler", "~> 1.16"
spec.add_development_dependency "rake", "~> 10.0"
spec.add_development_dependency "rspec", "~> 3.0"
spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
