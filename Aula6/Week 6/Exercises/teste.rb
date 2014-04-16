threads = [] 


4.times do |i| 

 t = Thread.new { 
 puts "#{i}\n" 
 puts "#{i}.#{i}\n" 
 puts "#{i}.#{i}.#{i}\n" 
 } 

 threads << t 

end 


threads.each { |t| t.join }