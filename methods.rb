# In this challenge, you need to write a method prime? that takes an argument and returns true or false depending on if the number is prime or not.

# > prime? 3
# true
# > prime? 17
# true
# > prime? 22
# false

def prime?(number)
    i = 1
    counter = 0
    
    while i <= number do
        if number % i == 0
            counter = counter + 1
        end
        i = i + 1
    end
    
    if counter != 2
        return false
    else
        return true
    end
end
