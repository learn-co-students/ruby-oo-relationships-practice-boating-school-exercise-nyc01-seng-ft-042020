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
    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end
    def self.find_student(first_name)
        self.all.find do |student|
            student.first_name == first_name
        end
    end
    
    def grade_percentage
        # should return the percentage of tests 
        # that the student has passed, a Float 
        # (so if a student has passed 3 / 9 tests that they've taken, 
        # this method should return the Float `33.33`)

        # I need the array of boating_tests that belong to this student
        boating_tests = BoatingTest.find_all_by_student(self)
        # Check boating tests to select all tests that "passed"
        passed_tests = boating_tests.select do |boating_test|
            boating_test.test_status == "passed"
        end
        (passed_tests.size / boating_tests.size.to_f) * 100

    end
    
end


# DONE * should initialize with `first_name`
# DONE * `Student.all` should return all of the student instances
# DONE * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# DONE? * `Student.find_student` will take in a first name and output the student (Object) with that name
# DONE * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)