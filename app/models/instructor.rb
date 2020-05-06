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

  def pass_student(student, test_name)
     BoatingTest.all.each do |test|
       if test.student == student && test.test_name == test_name
        test.status = 'passed'
      else
        BoatingTest.new(student, test_name, 'passed', self)
      end
    end

  end

    def fail_student(student, test_name)
       BoatingTest.all.each do |test|
         if test.student == student && test.test_name == test_name
          test.status = 'fail'
        elsif test.student == student && !test
          BoatingTest(student, test_name, 'fail', self)
        end
      end

  end

end
