class OrganizersController < ApplicationController
  before_action :authenticate_user!
  def home
    @homework = Homework.new
    @homework_subject = ["MATH", "CSC", "HSTR", "ART", "ATWP"]
    @homeworks = Homework.all.order("due_date ASC")
  end
end
