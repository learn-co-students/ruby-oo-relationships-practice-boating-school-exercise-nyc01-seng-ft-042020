class Student
  attr_reader :name

  def initialize(name)
   @name = name
 end

 def self.all
   BoatingTest.all.collect { |e| e.student}
 end

 def add_boating_test(test_name, status, instructor)
   BoatingTest.new(self, test_name, status, instructor)
 end

 def self.find_student(name)
   self.all.find{ |e| e.name == name}
 end

def grade_percentage
  results = BoatingTest.all.collect { |e| e.student == self ? e.status : nil}.compact
  total = results.count
  passed = results.count("passed")
  passed / total.to_f * 100
end

end
