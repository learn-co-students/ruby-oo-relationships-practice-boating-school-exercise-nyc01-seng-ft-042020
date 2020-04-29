class Student
  @@all = []
  attr_reader :first_name

  def initialize(first_name)
   @first_name = name
   Student.all << all
 end

 def self.all
   @@all
 end

 def add_boating_test(test_name, status, instructor)
   BoatingTest.new(self, test_name, status, instructor)
 end

 def self.find_student(name)
   Student.all.find{ |e| e.name == name}
 end

def grade_percentage
  results = BoatingTest.all.collect { |e| e.student == self ? e.status : nil}.compact
  total = results.count
  passed = results.count("passed")
  passed / total.to_f * 100
end

end
