class Student

    attr_accessor :first_name
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        Student.all << self 
    end
    def self.all 
        @@all
    end
    def add_boating_test(boating_test_name, status, instructor)
        BoatingTest.new(self, boating_test_name, status, instructor)
    end 
    def self.find_student(first_name)
        self.all.select {|all_students| all_students.first_name == first_name}
    end 
    def grade_percentage
        all_tests_taken = BoatingTest.all.select {|tests| tests.student == self} 
        all_tests_passed = all_tests_taken.select {|tests| tests.status == "passed"}
        grade_percent = (all_tests_passed.count.to_f / all_tests_taken.count.to_f) * 100 
        grade_percent
    end 
end

# `Student` class:
# * (should initialize with `first_name`)

# * (`Student.all` should return all of the student instances)

# * (`Student#add_boating_test` should initialize a new boating test with a Student (Object), 
#     a boating test name (String), a boating test status (String), and an Instructor (Object))

# * `(Student.find_student` will take in a first name and output the student (Object) with that name)

# * (`Student#grade_percentage` should return the percentage of tests that the student has passed, 
#     a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`))