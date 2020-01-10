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
