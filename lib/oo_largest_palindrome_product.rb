# Implement your object-oriented solution here!
class LargestPalindromeProduct
    def answer
        largest = 0

        (100..999).each do |i|
            (100..999).each do |j|
                product = i*j
                if self.is_palindrome?(product) && product > largest
                    largest = product
                end
            end 
        end 
        largest
    end

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
    
    
end