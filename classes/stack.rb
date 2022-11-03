# Create a class "Stack" that exposes the following characteristics:
class Stack
  def initialize
    @arr = []
  end

  # • A public method called "push" that receives an unsigned integer number as parameter.
  # This method should store the numbers internally while keeping the order they where pushed.
  def push(number)
    number.instance_of?(Integer) ? @arr << number : nil
  end

  def pop
    # Remove Elements from the stack in (FILO) order and reteurn it.
    @removed = @arr.pop
  end

  # • A public method called "max" which returns the highest number of the numbers in the stack.
  def max
    @arr.max
  end
end
