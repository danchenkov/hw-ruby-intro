# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	return 0 if arr.empty?
	arr.reduce(:+)
end

def max_2_sum arr
	return 0 if arr.empty?
	return arr[0] if arr.size == 1
	sum arr.max(2)
end

def sum_to_n? arr, n
	if arr.empty?
		return true if n == 0
		return false
	end
	return false if arr.size == 1

	arr.permutation(2).map do |x|
		return true if n == sum(x)
	end
	false
end

# Part 2

def hello(name)
	"Hello, #{name}"
end

def starts_with_consonant? s
	s =~ /^[A-Za-z]/ and s !~ /^[aeiou]/i
end

def binary_multiple_of_4? s
	s =~ /^[01]+$/ and s.to_i(2)%4 == 0
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		self.isbn = isbn
		self.price = price
	end

	attr_reader :isbn, :price

	def isbn=(isbn)
		raise ArgumentError unless isbn.is_a?(String) and isbn != ''
		@isbn = isbn
	end

	def price=(price)
		raise ArgumentError unless price.is_a?(Numeric) and price > 0
		@price = price
	end

	def price_as_string
		sprintf("$%0.2f", @price)
	end
end
