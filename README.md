# Ruby AST Visualizer

Ruby AST Visualizer. Based on [Parser](https://github.com/whitequark/parser).

## Usage

An example `ruby_ast_visualizer` command.

```
$ cat hello.rb
puts 'hello, world'
$ ruby_ast_visualizer hello.rb
```

or

```
$ ruby_ast_visualizer -e 'puts "hello, world"'
```

AST image file is generated.

<img src="https://raw.githubusercontent.com/koic/ruby_ast_visualizer/master/images/hello_world.png" alt="hello, world"/>

### A little more in detail

You can specify output path in the `-o` option. That value is default a.png.

```
$ ruby_ast_visualizer -o path/to/file -e 'puts "hello, world"'
```

## Requirements

* Graphviz

## Install

Add these lines to your application's Gemfile:

```
gem 'ruby_ast_visualizer'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install ruby_ast_visualizer
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Ruby AST Visualizer is released under the GNU General Public License, version 2.
