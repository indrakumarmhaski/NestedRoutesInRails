class TeachersController < ApplicationController
    before_action :set_school, only: [:index,:new,:create , :show, :edit, :update, :destroy]
    before_action :set_teacher, only: [:show, :edit, :update, :destroy]

    def index
        @teachers = @school.teachers
    end

    def new
        @teacher = Teacher.new
    end

    def edit
        
    end

    def create
       @school.teachers.create! teacher_params

       redirect_to school_teachers_path
    end
    
    def update
        if @teacher.update(teacher_params)
            redirect_to school_teachers_path
        else
            redirect_to edit_school_teacher_path(@school,@teacher)
        end
    end

    def destroy
        byebug
        if @teacher.destroy
          redirect_to school_teachers_path, notice: 'Teacher was successfully destroyed.'
        else
          redirect_to school_teachers_path
        end


    end

    private
        def set_school
            @school = School.find(params[:school_id])
        end

        def set_teacher
            @teacher = Teacher.find(params[:id])
        end

        def teacher_params
            params.require(:teacher).permit(:name,:education,:mob,:age)
        end
end


# <%= form_with(model: school, local: true) do |form| %>