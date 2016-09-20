$:.push File.expand_path('../lib', __FILE__)

require 'ruby_ast_visualizer/version'

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'ruby_ast_visualizer'
  s.summary = 'Ruby AST Visualizer.'
  s.description = 'Ruby AST Visualizer.'

  s.version = RubyAstVisualizer::VERSION

  s.license = 'GPLv2'

  s.authors = ['Koichi ITO']
  s.email = 'koic.ito@gmail.com'
  s.homepage = 'http://github.com/koic/ruby_ast_visualizer'

  s.files = Dir[
    'README.md',
    'lib/**/*',
    'bin/ruby_ast_visualizer',
    'LEGAL',
    'LICENSE'
  ]
  s.require_paths = ['lib']
  s.executables = `git ls-files -- bin/*`.split("\n").map {|f| File.basename(f) }

  s.required_ruby_version = '>= 2.1.0'

  s.add_dependency('parser')
  s.add_dependency('ruby-graphviz')
end
