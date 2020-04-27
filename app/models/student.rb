class Student
attr_reader :first_name
@@all = []

def initialize(first_name)
    @first_name = first_name
    Student.all << self
end

def self.all
    @@all
end

def add_boating_test(test_name,status,instructor)
    BoatingTest.new(self, test_name,status,instructor)
end

def self.find_student(first_name)
    self.all.select do |student|
        student.first_name == first_name
    end
end

def grade_percentage
  tests_passed =  BoatingTest.all.select do |test|
        test.student == self && test.status == "passed"
    end.count

tests_taken = BoatingTest.all.select do |test|
    test.student == self
end.count

(tests_passed.to_f / tests_taken.to_f) * 100
end



end
