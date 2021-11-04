executables = %w(
  twitter-algebra
  twitter-console
  twitter-delete
  twitter-dormant
  twitter-hist-ids
  twitter-intersect
  twitter-vanity
)

Gem::Specification.new do |s|
  s.name = "twitter-vanity-suite"
  s.version = "0.3.2"
  s.summary = "my personal set of command line twitter tools"
  s.description = s.summary + " " # shut up rubygems
  s.homepage = "https://github.com/haileys/twitter-vanity-suite"
  s.author = "Hailey Somerville"
  s.email = "hailey@hailey.lol"
  s.files = executables.map { |exe| "bin/#{exe}" } + ["lib-internal/common.rb"]
  s.license = "AGPL"
  s.executables = executables

  s.add_dependency "twitter", "~> 7.0"
end
