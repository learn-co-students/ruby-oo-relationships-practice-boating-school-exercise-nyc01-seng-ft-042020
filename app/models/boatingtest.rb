class BoatingTest
    attr_reader :student, :test, :instructor
    attr_accessor :test_status

    @@all = []

    def initialize(student, test, test_status = "pending", instructor)
        @student = student
        @test = test
        @test_status = test_status
        @instructor = instructor
        BoatingTest.all << self
    end

    def self.all
        @@all
    end

end
