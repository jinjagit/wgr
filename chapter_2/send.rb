# frozen_string_literal: true

obj = Object.new

def obj.greet
  puts 'hi!'
end

# Just to illustrate 'send'. It's a not a great idea to use it like this,
# as the likelihood of enabling malicious atacks is high.
# A more explicit whitelisting of permitted messages would be wiser,
# as well as using 'public_send' instead of 'send'.
def send_if_responds(obj, method_name)
  if obj.respond_to?(method_name)
    obj.send(method_name)
  else
    puts "No method called #{method_name} exists for the object #{obj}"
  end
end

send_if_responds(obj, :greet)
send_if_responds(obj, :not_a_method)
