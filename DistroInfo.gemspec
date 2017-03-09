# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'DistroInfo/version'

Gem::Specification.new do |spec|
  spec.name          = "DistroInfo"
  spec.version       = DistroInfo::VERSION
  spec.authors       = ["Alex Pepper"]
  spec.email         = ["axpepper@gmail.com"]

  spec.summary       = %q{linux distro info.}
#  spec.description   = %q{todo: write a longer description or delete this line.}
#  spec.homepage      = "todo: put your gem's website or public repo url here."
  spec.license       = "mit"

  # prevent pushing this gem to rubygems.org. to allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "todo: set to 'http://mygemserver.com'"
  else
    raise "rubygems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| file.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nokogiri"
end
