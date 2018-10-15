# Implement your procedural solution here!

def is_palindrome? num 
    num_as_str = num.to_s
    i=0
    while i<num_as_str.length/2
        if num_as_str[i]!=num_as_str[num_as_str.length-1-i]
            return false    
        end
        i+=1
    end
    true   
end

def largest_palindrome_product
    largest = 0

    (100..999).each do |i|
        (100..999).each do |j|
            product = i*j
            if is_palindrome?(product) && product > largest
                largest = product
            end
        end 
    end 
    largest
end