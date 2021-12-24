# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-personal"
  spec.version       = "0.0.1"
  spec.authors       = ["Ben Souchet"]
  spec.email         = ["contact@bensouchet.dev"]

  spec.summary       = "A cool Jekyll theme for your personal site"
  spec.homepage      = "https://github.com/BenSouchet/jekyll-theme-personal"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  regex      = %r{^(_includes|_layouts|_sass|assets|LICENSE|README)/i}
  spec.files = `git ls-files -z`.split("\x0").select { |f| f.match(regex) }

  spec.required_ruby_version = ">= 2.7.3"

  spec.platform = Gem::Platform::RUBY
  spec.add_runtime_dependency "jekyll", ">= 3.9", "< 5.0"
  spec.add_runtime_dependency "github-pages", ">= 222"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"

  spec.add_development_dependency "html-proofer", "~> 3.0"
  spec.add_development_dependency "rubocop-github", "~> 0.16"
end
