class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        by_grade = Student.order(:grade).reverse
        render json: by_grade
    end

    def highest_grade
        valedictorian = Student.all.max_by{ |student| student.grade }
        render json: valedictorian
    end
end
