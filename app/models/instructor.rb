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

    def pass_student(student, test_name)    
        boating_test = BoatingTest.find_by_student_and_test_name
        if !boating_test
            boating_test = BoatingTest.new(student, test_name)
        end
        boating_test.test_status = "passed"
        boating_test
    end

    def fail_student(student, test_name)
        # we need the boating_test instance
        # were looking for the boating test whose student matches
        # the student that was passed in as an argument.

        boating_test = BoatingTest.find_by_student_and_test_name(student, test_name)

        if !boating_test
            boating_test = BoatingTest.new(student, test_name)
        end

        #change the test_status of boating test inst. to = "passed"
        boating_test.test_status = "failed"

        # this methods needs to return
        # the boating_test instance
        boating_test
    end
end

# DONE * initialize with a name
# DONE * `Instructor.all` should return all instructors
# * `Instructor#pass_student` should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the `BoatingTest` instance.
# * `Instructor#fail_student` should take in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.