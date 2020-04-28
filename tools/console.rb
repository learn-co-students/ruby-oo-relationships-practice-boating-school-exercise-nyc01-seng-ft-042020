require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
student1 = Student.new("Jason")
student2 = Student.new("Ale")
student3 = Student.new("Tim")
instructor1 = Instructor.new('Pepe')
instructor2 = Instructor.new('John')
instructor3 = Instructor.new('Juan')
boatingtest1 = BoatingTest.new(student1, 'test_name1', 'test_status', instructor1)
boatingtest2 = BoatingTest.new(student2, 'test_name2', 'test_status', instructor2)
boatingtest3 = BoatingTest.new(student3, 'test_name3', 'test_status', instructor3)

instructor1.pass_student(student1, 'test_name1')
instructor2.pass_student(student2, 'test_name2')
instructor3.pass_student(student3, 'test_name0')


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
