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

    def add_boating_test(name, status, instructor)
        BoatingTest.new(name, status, self, instructor)
    end

    def self.find_student(first_name)
        x = Student.all.find do |student|
            student.first_name == first_name 
        end 
        x.map do |elem|
            puts elem 
        end 
    end

    # last method tests logic.

end
