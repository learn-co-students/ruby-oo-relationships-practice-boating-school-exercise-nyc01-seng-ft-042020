require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#students
s1 = Student.new("David")
s2 = Student.new("Kyle")
s3 = Student.new("Rosie")
s4 = Student.new("Caroline")
s5 = Student.new("Sophie")
s6 = Student.new("Jessica")

#instructors
i1 = Instructor.new("Tashawn")
i2 = Instructor.new("Jallen")
i3 = Instructor.new("Meghann")

#boatingtests student, test_name, test_status, instructor)
test1 = BoatingTest.new(s1, "beginner", "passed", i1)
test2 = BoatingTest.new(s2, "beginner", "failed", i2)
test3 = BoatingTest.new(s3, "beginner", "pending", i3)
test4 = BoatingTest.new(s4, "intermediate", "failed", i1)
test5 = BoatingTest.new(s5, "intermediate", "passed", i1)
test6 = BoatingTest.new(s6, "advanced", "failed", i1)
test7 = BoatingTest.new(s1, "advanced", "passed", i2)
test8 = BoatingTest.new(s2, "advanced", "failed", i3)
test9 = BoatingTest.new(s3, "beginner", "passed", i2)
test10 = BoatingTest.new(s4, "intermediate", "failed", i3)
test11 = BoatingTest.new(s4, "beginner", "passed", i2)
test12 = BoatingTest.new(s4, "intermediate", "failed", i3)
test13 = BoatingTest.new(s5, "advanced", "passed", i3)
test14 = BoatingTest.new(s6, "advanced", "failed", i1)
test15 = BoatingTest.new(s6, "intermediate", "pending", i1)
test16 = BoatingTest.new(s6, "beginner", "passed", i1)
test17 = BoatingTest.new(s6, "beginner", "failed", i1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

