class Instructor
@@all = []
    def initialize(name)

        @name = name

        Instructor.all<<self

    end

    def self.all
        @@all
    end

    def pass_student(student,test_name)
        myTest = test_exists?(student,test_name)
        if(myTest)
            myTest.test_status = 'passed'
        else
            BoatingTest.new(student,test_name,'passed',self)
        end
    end

    def fail_student(student,test_name)
        myTest = test_exists?(student,test_name)
        if(myTest)
            myTest.test_status = 'failed'
        else
            BoatingTest.new(student,test_name,'failed',self)
        end
    end

    def test_exists?(student,test_name)
        BoatingTest.all.find do |i|
            i.student==student && i.test_name == test_name
        end
    end
end
