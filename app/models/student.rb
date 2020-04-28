require 'pry'

require_relative './boatingtest.rb'
require_relative './instructor.rb'




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

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end


    def self.find_student(name)
        self.all.find {|x| x.first_name == name}
    end

    def grade_percentage
        tests_taken = BoatingTest.all.select {|x| x.student == self}.count.to_f
        passed_test = BoatingTest.all.select {|x| x.student == self && x.test_status == "passed"}.count.to_f
        percentage = (passed_test/tests_taken)*100
        percentage
    end


end
student1 = Student.new("John")
student2 = Student.new("Sam")
student3 = Student.new("Brian")



