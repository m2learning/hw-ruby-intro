# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort {|a,b| b <=> a}.take(2).inject(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).to_a.any? { |c| c.inject(0, :+) == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[b-df-hj-np-tv-z]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s =~ /^([0-1]+00|0)$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.length == 0
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%.2f", price)
  end
end
