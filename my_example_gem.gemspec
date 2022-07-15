# frozen_string_literal: true

require_relative "lib/my_example_gem/version"

Gem::Specification.new do |spec|
  spec.name = "my_example_gem"
  spec.version = MyExampleGem::VERSION
  spec.authors = ["Di Wen"]
  spec.email = ["di.wen@shopify.com"]

  spec.summary = "Write a short summary, because RubyGems requires one."
  spec.description = "Write a longer description or delete this line."
  spec.homepage = "https://github.com"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://example.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ifyouseewendy/my_example_gem"
  spec.metadata["changelog_uri"] = "https://github.com/ifyouseewendy/my_example_gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.extensions = ["ext/my_example_gem/extconf.rb"]
  # actually a build time dependency, but that's not an option.
  spec.add_runtime_dependency "rake", "> 1"
  # needed until rubygems supports Rust support is out of beta
  spec.add_dependency "rb_sys", "~> 0.9.18"
end
