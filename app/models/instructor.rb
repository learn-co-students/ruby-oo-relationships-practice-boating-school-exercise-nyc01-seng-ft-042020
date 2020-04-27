class Instructor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        Instructor.all << self
    end

    def self.all
        @@all
    end

    def pass_student(student,test_name)
        matching_test = BoatingTest.all.select { |boatingtest| boatingtest.student == student && boatingtest.test_name == test_name}
        if matching_test.size > 0
            matching_test.each do |test| 
                test.test_status = 'passed'
                return matching_test
            end
        else
            return BoatingTest.new(student,test_name, 'passed', self)
        end
    end

    def fail_student(student,test_name)
        matching_test = BoatingTest.all.select { |boatingtest| boatingtest.student == student && boatingtest.test_name == test_name}
        if matching_test.size > 0
            matching_test.each do |test| 
                test.test_status = 'failed'
                return matching_test
            end
        else
            BoatingTest.new(student,test_name, 'failed', self)
        end
    end
end