class BoatingTest
    attr_accessor :boating_test_name, :status, :student, :instructor

    @@all = []

    def initialize(boating_test_name, status, student, instructor)
        @boating_test_name = boating_test_name
        @status = status
        @student = student
        @instructor = instructor
        BoatingTest.all << self 
    end

    def self.all
        @@all
    end

end
