#1. A western man is trying to find gold in a river.
# To do that, he passes a bucket through the river's soil and then checks if it contains any gold. 
#However, he could be more productive if he wrote an algorithm to do the job for him.
#So, you need to check if there is gold in the bucket, and if so, return True/true.
# If not, return False/false.
def check_the_bucket(bucket)
  bucket.include?("gold") ? true : false
end

#2.  Write a program that prints the numbers from 1 to 100. But for multiples of 
#three print “Fizz” instead of the number and for the multiples of five print “Buzz”. 
#For numbers which are multiples of both three and five print “FizzBuzz”. 
#But this time, you're not allowed to use the % operator.

def check_three(number) 
#number is divisible by 3 if sum of it's all digits are 3,6 or 9
  until number < 10
    number = number.digits.sum
  end

  number == 3 || number == 6 || number == 9 ? true : false
end

def check_five(number)
#number is divisible by 5 if last digit is 0 or 5
  lastDigit = number.digits.first

  lastDigit == 0 || lastDigit == 5  ? true : false
end

def count()
  (1..100).each do |i|
    if check_three(i) && check_five(i)
      puts "BuzzFizz"
	  elsif check_three(i)
	    puts "Fizz"
	  elsif check_five(i)
	    puts "Buzz"
	  else
	    puts i 
	  end
  end	
end

count()

