# my way
def prime?(number)
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
  puts prime_num
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
