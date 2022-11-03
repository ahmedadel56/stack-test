require_relative 'Stack'

# Create a class "Extras" which includes all the methods "Stack".

class Extras < Stack
    # It should expose a method called "mean" which should return the mean value (average value) of the numbers in the stack.
    def mean
        mean = @arr.sum(0.0) / @arr.length
    end
end
