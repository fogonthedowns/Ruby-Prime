amiprime = Numeric.new
(4..10000).each do
   |i|
   (2..(Math.sqrt(i).ceil)).each do
      |thing|
      state = 1
      if (i.divmod(thing)[1] == 0)
         amiprime = 0
         break
      end
   end
   print "#{i}\," unless (state == 0)
end 
exit
