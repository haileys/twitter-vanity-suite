executables = %w(
  twitter-intersect
  twitter-vanity
)

Gem::Specification.new do |s|
  s.name = "twitter-vanity-suite"
  s.version = "0.0.1"
  s.summary = "my personal set of command line twitter tools"
  s.description = s.summary + " " # shut up rubygems
  s.homepage = "https://github.com/charliesome/twitter-vanity-tools"
  s.author = "Charlie Somerville"
  s.email = "charlie@charliesomerville.com"
  s.files = executables.map { |exe| "bin/#{exe}" } + ["lib-internal/common.rb"]
  s.license = "BSD"
  s.executables = executables

  s.add_dependency "twitter", "~> 5.4"
end
