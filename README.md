Ruby revision. Working through _"The Well-Grounded Rubyist. 3rd Edition."_

### Chapter 1
Identifiers:
- Variables
  - local
  - instance
  - class
  - global
- Constants
- Keywords
- Method names

Every object is capable of understanding a certain set of messages. Each message that an object understands corresponds directly to a method — a named, executable routine whose execution the object has the ability to trigger.

`x = "100".to_i`
`x` = the result of sending the message `to_i` to the string `"100"` (an object)

`puts "hello!"` is the same as `self.puts("hello!")`

A class defines an object’s functionality, and every object is an instance of exactly one class.
