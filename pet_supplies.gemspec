
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pet_supplies/version"

Gem::Specification.new do |spec|
  spec.name          = "pet_supplies"
  spec.version       = PetSupplies::VERSION
  spec.authors       = ["'Cathrin Whitmer'"]
  spec.email         = ["'catwhitmer@gmail.com'"]

  spec.summary       = %q{A gem that scrapes pet pet_supplies.}
  spec.description   = %q{A gem that scrapes pet supplies.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/catwhitmer/pet_supplies"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/catwhitmer/pet_supplies."
    spec.metadata["changelog_uri"] = "https://github.com/catwhitmer/pet_supplies."
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency 'nokogiri'
  spec.add_development_dependency 'pry'
end
