#write your code here

def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(operands)
  operands.reduce(0) { |sum, n| add(sum, n) }
end

def multiply(operands)
  operands.reduce(1) { |product, n| product = product * n }
end

def power(x, y)
  x ** y
end

def factorial(x)
  operands = []
  x.times do |i|
    operands << i + 1
  end
  multiply(operands)
end
