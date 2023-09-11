require_relative "stacklike"

class Stack
  include Stacklike
end

if __FILE__ == $PROGRAM_NAME
  s = Stack.new
  p s.stack

  s.add_to_stack("item one")
  s.add_to_stack("item two")
  s.add_to_stack("item three")
  p s.stack

  taken = s.take_from_stack
  p taken, s.stack
end
