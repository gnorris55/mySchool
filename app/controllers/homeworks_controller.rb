class HomeworksController < ApplicationController
    before_action :authenticate_user!
    def new 
        @homework = Homework.new
        @homework_subject = ["MATH", "CSC", "HSTR", "ART", "ATWP"]
        respond_to do |t|
            t.js
            t.json {render :partial => 'form'}
        end
    end

    def edit 
        @homework_subject = ["MATH", "CSC", "HSTR", "ART", "ATWP"]
        @homework = Homework.find(params[:id])
    end

    def update 
        @homework = Homework.find(params[:id])
        if @homework.update(homework_params)
            redirect_to :controller => 'organizers', :action => 'home'
        else 
            redirect_to edit_homework_path(params[:id])
        end
    end

    def create
        @homework = Homework.new(homework_params)
        @homework.save 

        redirect_to root_path
    end

    def destroy
        @homework = Homework.find(params[:id])
        @homework.destroy
        redirect_to root_path
    end

    private 

    def homework_params
        params.require(:homework).permit(:subject, :content, :due_date)
    end
end
