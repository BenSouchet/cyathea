# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "cyathea-theme"
  spec.version       = "0.0.1"
  spec.authors       = ["Ben Souchet"]
  spec.email         = ["contact@bensouchet.dev"]

  spec.summary       = "Cyathea is a ready-to-use Jekyll theme, perfect for personal blogs or simple project websites, with a focus on responsive and clean design."
  spec.homepage      = "https://github.com/BenSouchet/cyathea"
  spec.license       = "MIT"

  spec.metadata      = {
    "plugin_type"       => "theme",
    "homepage_uri"      => "https://github.com/BenSouchet/cyathea",
    "source_code_uri"   => "https://github.com/BenSouchet/cyathea",
    "documentation_uri" => "https://github.com/BenSouchet/cyathea#readme"
  }

  regex      = %r{^(_includes|_layouts|_sass|assets|LICENSE|README)/i}
  spec.files = `git ls-files -z`.split("\x0").select { |f| f.match(regex) }

  spec.required_ruby_version = ">= 2.7.3"

  spec.platform = Gem::Platform::RUBY
  spec.add_runtime_dependency "jekyll", ">= 3.9", "< 5.0"
  spec.add_runtime_dependency "github-pages", ">= 223"
  spec.add_runtime_dependency "jekyll-include-cache", ">= 0.2"

end
