class Instructor
@@all = []
attr_reader :name

    def initialize(name)
        @name = name
        Instructor.all << self
    end

    def self.all
        @@all
    end

    def pass_student(student,test_name)
        #collect all the matches for the student and test name. change the status to passed
        #and return the instance.
        #if they dont exist, create the instance and pass them. 
        #the instance will be implicitly returned.
        BoatingTest.all.collect do |e|
            if e.student == student && test_name == e.test_name
            status = "passed"
            return e
            elsif e.student != student && test_name != e.test_name
                BoatingTest.new(student, test_name,"passed",self)
            end
        end
    end


            def fail_student(student, test_name)
                #use same method as above. potentially this could build off of 
                #previous method. 
                BoatingTest.all.collect do |e|
                    if e.student == student && test_name == e.test_name
                    status = "failed"
                    return e
                    elsif e.student != student && test_name != e.test_name
                        BoatingTest.new(student, test_name,"failed",self)
                    end
                end
            end
    end
