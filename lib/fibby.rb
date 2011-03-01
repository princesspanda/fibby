module Fibby

  def closest_fibonacci
    raise NoFibExistsError.new if self < 1

    # Two options here -- the iterative or generative approach
    iterative_fib
#    fib_using_generator
  end

  private

  def iterative_fib
    f1, f2 = 0, 1

    while f2 < self
      f1, f2 = f2, f1+f2
    end
    f1
  end

  def fib_using_generator
    fib_generator do |f1, f2|
      return f1 if f2 > self
    end
  end

  def fib_generator
    f1, f2 = 0, 1
    while true
      yield f1, f2
      f1, f2 = f2, f1+f2
    end
  end


  class NoFibExistsError < StandardError

  end
end


Numeric.__send__(:include, Fibby)