class StudentsController < ApplicationController
    def index()
        students = Student.all
        render json: students
    end
    def grades()
        sortedStudents = Student.all.sort_by{|student| student.grade}.reverse
        render json: sortedStudents
    end
end
