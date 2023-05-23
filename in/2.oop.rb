# A class is blueprint through which a object is created
# An object is an instance of a class 

class Student
    # def initialize(name, cohort)
    #     @name=name
    #     @cohort= cohort
    # end
    attr_accessor :name, :cohort


    # setter methods
    # attr_writer :name, :cohort
    # def name=(name)
    #    @name=name
    # end
    # def cohort=(cohort)
    #     @cohort=cohort
    # end

    # getter
    # attr_reader :name, :cohort
    # def name
    #    @name
    # end

    # def cohort
    #    @cohort
    # end

end

student1 = Student.new
student1.name ="Austin"
puts student1.name

student1.cohort="SDFT03"
puts student1.cohort