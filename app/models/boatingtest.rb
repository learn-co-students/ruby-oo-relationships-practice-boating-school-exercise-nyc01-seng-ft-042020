class BoatingTest
    attr_accessor :student, :test_name, :test_status, :instructor
    @@all = []
    def initialize (student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        BoatingTest.all << self
    end
    def self.all
        @@all
    end


    def self.find_by_student_and_test_name(student, test_name)
      boating_test = self.all.find do |boating_test|
        boating_test.student == student && boating_test.test_name == test_name  
      end
    end

    def self.find_all_by_student(student)
      boating_test = self.all.select do |boating_test|
        boating_test.student == student 
      end
    end
  
end


# DONE: BoatingTest` class:
# DONE:  * should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# DONE:  * `BoatingTest.all` returns an array of all boating tests