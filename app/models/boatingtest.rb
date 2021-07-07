class BoatingTest
    attr_reader :student, :name
    attr_accessor :status
    
    @@all = []

    #should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
    def initialize (hash)
        @student = hash[:student]
        @name = hash[:name]
        @status = hash[:status]
        @teacher = hash[:teacher]
        BoatingTest.all << self
    end

    def self.all
        @@all
    end

end
