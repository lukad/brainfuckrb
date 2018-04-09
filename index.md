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
bf = Brainfuckrb::Brainfuck.new(hello_brainfuck)
bf.run
```

    $ ./hello_brainfuck.rb
    Hello World!

Or run brainfuck programs directly:

    $ cat hello.bf
    +++++ +++++             initialize counter (cell #0) to 10
    [                       in loop set the next four cells to 70/100/30/10
        > +++++ ++          add  7 to cell #1
        > +++++ +++++       add 10 to cell #2
        > +++               add  3 to cell #3
        > +                 add  1 to cell #4
        <<<< -              decrement counter (cell #0)
    ]
    > ++ .                  print 'H'
    > + .                   print 'e'
    +++++ ++ .              print 'l'
    .                       print 'l'
    +++ .                   print 'o'
    > ++ .                  print ' '
    << +++++ +++++ +++++ .  print 'W'
    > .                     print 'o'
    +++ .                   print 'r'
    ----- - .               print 'l'
    ----- --- .             print 'd'
    > + .                   print '!'
    > .                     print '\n'

    $ brainfuckrb hello.bf
    Hello World!

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
