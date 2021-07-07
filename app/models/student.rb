class Student
@@all = []
attr_reader :first_name
    def initialize(first_name)
        @first_name = first_name

        Student.all<<self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name,test_status,instructor)
        BoatingTest.new(self,test_name,test_status,instructor)
    end

    def self.find_student(name)
        Student.all.find do |i|
            i.first_name==name
        end
    end

    def grade_percentage
        passed=0
        failed=0
        myTests = BoatingTest.all.select do |i|
            i.student==self
        end
        myTests.each do |i|
            if(i.test_status=='passed')
                passed+=1
            end
        end

        passed/myTests.length.to_f
    end

end
