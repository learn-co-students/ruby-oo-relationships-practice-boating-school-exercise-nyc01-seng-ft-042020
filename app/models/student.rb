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

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor )
    end

    def find_student(first_name)
        self.all.select {|student| student.name == first_name}
    end

    def grade_percentage
        all_tests = BoatingTest.all.select{ |test| test.student == self }
        all_tests_passed = all_tests.select{ |test| test.test_status == 'passed'}
        (all_tests_passed.size * 100.00) / (all_tests.size.to_i).to_f
    end
end

# * `Student#grade_percentage` should return the percentage of tests 
# that the student has passed, a Float (so if a student has passed 
# 3 / 9 tests that they've taken, this method should return the 
# Float `33.33`)