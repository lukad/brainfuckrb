# Brainfuckrb

## Installation

Isntall it with RubyGems:

    $ gem install brainfuckrb

## Usage

```ruby
#!/usr/bin/env ruby
# hello_brainfuck.rb

hello_brainfuck = <<-eos
  ++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++
  ++++++++++++.>.+++.------.--------.>+.>.
eos
bf Brainfuckrb::Brainfuck.new(hello_brainfuck)
bf.run
```

    $ ./hello_brainfuck.rb
    Hello World!

Or run brainfuck programs directly:

    $ brainfuckrb hello.bf
    $ Hello World!

Only the brainfuck control characters ```><+-.,[]``` are interpreted.
Others will be ignored.

## Known bugs

* Input does not work

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
