require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("John")
student2 = Student.new("Sam")
student3 = Student.new("Brian")



instructor1 = Instructor.new("Mr. David")
instructor2 = Instructor.new("Mr. Andrew")
instructor3 = Instructor.new("Ms. Ruth")

test1 = BoatingTest.new(student1, "algebra", "passed", instructor1)
test2 = BoatingTest.new(student1, "geometry", "passed", instructor2)
test3 = BoatingTest.new(student1, "calculus", "failed", instructor3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line




