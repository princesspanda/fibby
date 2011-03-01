module Fibby

  def closest_fibonacci
    fib1 = 0
    fib2 = 1

    raise NoFibExistsError.new if self < 1

    while fib2 < self
      next_fib = fib1 + fib2
      fib1 = fib2
      fib2 = next_fib
    end
    fib1

  end


  class NoFibExistsError < StandardError

  end
end


Numeric.__send__(:include, Fibby)