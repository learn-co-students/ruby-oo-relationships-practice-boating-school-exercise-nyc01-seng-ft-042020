require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

i1 = Instructor.new("Ms. Puff")
i2 = Instructor.new("Mr. Krabs")
s1 = Student.new("Spongebob")
s2 = Student.new("Patrick")
s3 = Student.new("Sandy")
bt1 = BoatingTest.new(s1, "Don't Crash 101", i1)
bt2 = BoatingTest.new(s2, "Don't Crash 101", i1)
bt3 = BoatingTest.new(s3, "Don't Crash 101", i2)
bt4 = BoatingTest.new(s1, "Power Steering 202", i1)
bt5 = BoatingTest.new(s1, "Parallel Parking", i2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

