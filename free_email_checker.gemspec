
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "free_email_checker/version"

Gem::Specification.new do |spec|
  spec.name          = "free_email_checker"
  spec.version       = FreeEmailChecker::VERSION
  spec.authors       = ["Hamit YAY"]
  spec.email         = ["hamityay@hotmail.com"]
  spec.add_runtime_dependency "resolv-ipv6favor",
    ["= 0.0.0"]

  spec.summary       = %q{Free Email Check}
  spec.description   = %q{Checks an email is free account than if its not gives domain ip address(if present).}
  spec.homepage      = "https://rubygems.org/gems/free_email_checker"
  spec.metadata      = { "source_code_uri" => "https://github.com/hamityay/free_email_checker" }
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
