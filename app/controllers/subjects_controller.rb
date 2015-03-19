class SubjectsController < ApplicationController

  # returns list of all subjects
  def index
    @subject = Subject.all
  end

end
