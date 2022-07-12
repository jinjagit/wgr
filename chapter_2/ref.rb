# frozen_string_literal: false

# Note we have set the frozen_string_literal: false line above.
# This is because we want to be able to use the 'replace' method.

str = 'hello'
abc = str
str.replace('goodbye') # Replaces characters of the SAME string object.
puts str
puts abc
puts str.object_id
puts abc.object_id

# => goodbye
#    goodbye

puts

str = 'hello'
puts str.object_id
abc = str
str = 'goodbye' # str now points to a DIFFERENT string object.
puts str
puts abc
puts str.object_id
puts abc.object_id

# => goodbye
#    hello
