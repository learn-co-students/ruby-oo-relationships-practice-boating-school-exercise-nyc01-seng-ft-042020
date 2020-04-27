require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
no_crashing = spongebob.add_boating_test(student: spongebob, name: "Don't Crash 101", status: "pending", teacher: puff)
power_steering_failure = patrick.add_boating_test(student: patrick, name: "Power Steering 202", status: "failed", teacher: puff)
power_steering_pass = patrick.add_boating_test(student: patrick, name: "Power Steering 201", status: "passed", teacher: krabs)

no_crashing #=> status = "pending"
puff.fail_student(spongebob, "Don't Crash 101")
binding.pry
no_crashing #=> status = "failed"
puff.pass_student(spongebob, "Don't Crash 101")
no_crashing #=> status = "passed"


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

