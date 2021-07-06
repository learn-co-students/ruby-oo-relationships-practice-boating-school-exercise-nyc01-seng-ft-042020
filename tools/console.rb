require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# 2 student instances:

alice = Student.new("Alice")
bob = Student.new("Bob")

# 2 instructor instances:

christine = Instructor.new("Christine")
dave = Instructor.new("Dave")

# 2 boating_test instances:

bt1 = BoatingTest.new("Don't Crash 101", "pending", alice, christine)
bt2 = BoatingTest.new("Power Steering 202", "failed", bob, christine)
bt3 = BoatingTest.new("Power Steering 201", "passed", bob, dave)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line