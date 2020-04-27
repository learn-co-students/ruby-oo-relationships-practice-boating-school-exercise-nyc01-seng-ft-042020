require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
leornad = Student.new("Leornad")  

puff= Instructor.new("Ms.Puff")


test1 = BoatingTest.new(spongebob,51, "fail", puff)  
test2 = BoatingTest.new(patrick,89, "passed", puff) 

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

