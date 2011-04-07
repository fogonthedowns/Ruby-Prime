# my way
# technically 1 isn't prime: http://en.wikipedia.org/wiki/Prime_number

def prime?(number)
  (0..number).each do |number|
  prime_num = 0
  a =[]
  (2..(number-1)).each do |y|
    a << number%y 
    if a.include?(0)
      prime_num = false
    else 
      prime_num = true
    end
  end
  puts number if prime_num == true || number == 2
end
end


# their way
amiprime = Numeric.new
(4..10000).each do
   |i|
   (2..(Math.sqrt(i).ceil)).each do
      |thing|
      amiprime = 1
      if (i.divmod(thing)[1] == 0)
         amiprime = 0
         break
      end
   end
   print "#{i}\," unless (amiprime == 0)
end 
exit
