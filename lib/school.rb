# code here!
class School
    #initialiaze school
    attr_accessor :name
    def initialize(name)
        @name = name
        @roster = {}
    end
    ##add students and create grade keys if none exists already
    def roster
        @roster
    end
    def add_student(name, grade)
        roster[grade] ||= roster[grade] = []
        roster[grade] << name
    end
    #grade method should put out all students from that grade
    def grade(display_grade)
        @roster[display_grade]
    end
    #create sorted list of all students
    def sort
        @roster.each{|key, val| @roster[key].sort!}
    end
end