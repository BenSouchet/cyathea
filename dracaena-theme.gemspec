# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "dracaena-theme"
  spec.version       = "0.0.1"
  spec.authors       = ["Ben Souchet"]
  spec.email         = ["contact@bensouchet.dev"]

  spec.summary       = "Dracaena is a ready-to-use Jekyll theme, perfect for personal blogs or simple project websites, with a focus on responsive and clean design."
  spec.homepage      = "https://github.com/BenSouchet/jekyll-theme-personal"
  spec.license       = "MIT"

  spec.metadata.     = {
    "plugin_type"       => "theme",
    "documentation_uri" => "https://github.com/BenSouchet/jekyll-theme-personal#readme"
  }

  regex      = %r{^(_includes|_layouts|_sass|assets|LICENSE|README)/i}
  spec.files = `git ls-files -z`.split("\x0").select { |f| f.match(regex) }

  spec.required_ruby_version = ">= 2.7.3"

  spec.platform = Gem::Platform::RUBY
  spec.add_runtime_dependency "jekyll", ">= 3.9", "< 5.0"
  spec.add_runtime_dependency "github-pages", ">= 222"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"

  spec.add_development_dependency "html-proofer", "~> 3.0"
  spec.add_development_dependency "rubocop-github", "~> 0.16"
  spec.add_development_dependency "w3c_validators", "~> 1.3"
end
