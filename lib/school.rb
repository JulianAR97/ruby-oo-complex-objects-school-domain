class School
    attr_accessor :name, :roster
    
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(student_name, student_grade)
        @roster[student_grade] = [] if !@roster.key?(student_grade)
        @roster[student_grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.map {|grade, students| @roster[grade] = students.sort}
        @roster
    end
end

