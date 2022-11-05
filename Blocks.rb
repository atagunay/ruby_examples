# def calculate(a,b)
#    yield(a, b)
# end

# puts calculate(15, 10) {|a, b| a - b}   
# => 5

# In this example, we have defined a method calculate that takes two parameters  and .
# The yield statement invokes the block with parameters  and , and executes it.

# Task

# You are given a partially complete code. Your task is to fill in the blanks (_______).
# The factorial method computes: n! {  x  x  x  }.

def factorial
    yield
end

n = gets.to_i
factorial do 
    result = 1
    for i in 1..n do
        result = result * i
    end
    puts result
end
