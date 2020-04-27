class Student

    @@all = []

    attr_reader :first_name

    def initialize(first_name)
        @first_name = first_name

        Student.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(first_name)
        BoatingTest.all.select do |x|
            # binding.pry
            x.student.first_name == first_name
            # binding.pry
        end.map do |x|
            x.student
        end
    end

    def grade_percentage
        total_tests = BoatingTest.all.select do |test|
            test.student == self
            end.count
        passed_tests = BoatingTest.all.select do |test|
            test.student == self && test.test_status == "passed"
            end.count
        (passed_tests.to_f/total_tests.to_f)*100.0
    end
    

end
