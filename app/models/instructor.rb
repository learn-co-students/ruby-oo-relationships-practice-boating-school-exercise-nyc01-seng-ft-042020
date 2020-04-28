class Instructor

    attr_accessor :name
    @@all = []
    
# * initialize with a name
    def initialize(name)
        @name = name
        Instructor.all << self
    end

# * `Instructor.all` should return all instructors
    def self.all
        @@all
    end

# * `Instructor#pass_student` should take in a student instance and test name. 
    def pass_student(student,test_name)
# If there is a `BoatingTest` whose name and student match the values passed in, 
        matching_array = BoatingTest.all.select {|test| test.student == student && test.test_name == test_name}
        binding.pry
        if matching_array != nil
# this method should update the status of that BoatingTest to 'passed'. 
            return matching_array.each {|test_instance| test_instance.test_status = 'passed'}
            binding.pry
# If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. 
        else
            return BoatingTest.new(student, test_name, 'passed', self)
            binding.pry
# Either way, it should return the `BoatingTest` instance.
        end

    end

# * `Instructor#fail_student` should take in a student instance and 
# test name. Like `#pass_student`, it should try to find a matching 
# `BoatingTest` and update its status to 'failed'. If it cannot find an 
# existing `BoatingTest`, it should create one with the name, the 
# matching student, and the status 'failed'.



end
