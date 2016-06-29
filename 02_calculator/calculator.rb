def add x, y
  x+y
end

def subtract x, y
  x-y
end

def sum items
  items.reduce(:+) or 0
end

def multiply *args
  args.reduce(:*)
end

def power x, y
  x ** y
end

def factorial x
  x == 0 ? 1 : ((1..x).each.reduce :*)
end
