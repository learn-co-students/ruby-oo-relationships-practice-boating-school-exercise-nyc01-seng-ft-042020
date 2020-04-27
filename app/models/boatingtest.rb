class BoatingTest
    attr_accessor :status, :student, :instructor
    attr_reader :grade
    @@all = []
    def initialize(student,grade,status,instructor)
        @student = student
        @grade = grade
        @status = status
        @instructor = instructor
        @@all << self 
    end
    def self.all
        @@all
    end
end



# should initialize with Student (Object), a boating test name (String), 
# a boating test status (String), and an Instructor (Object)
# * `BoatingTest.all` returns an array of all boating tests