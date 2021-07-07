class Student
    attr_reader :first_name

    @@all = []

    def initialize (first_name)
        @first_name = first_name
        Student.all << self
    end

    def self.all
        @@all
    end

    def self.find_student (name)
        self.all.select {|student| student.first_name == name}
    end

    #initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
    def add_boating_test (hash)
        BoatingTest.new(hash)
    end

    #helper method
    def my_tests
        BoatingTest.all.select {|boating_test| boating_test.student == self}
    end
    
    #helper method
    def passed_tests
        my_tests.select {|test| test.status == "passed"}
    end
    
    #should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
    def grade_percentage
        passed_tests.count / my_tests.count
    end

end
