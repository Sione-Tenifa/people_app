class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @people = Person.find(params[:id])
  end

  def new
    @people = Person.new
  end

  def update
    @people = Person.find(:id)
  end

  # def create
  #   @people = Person.new(person_params)
 
  #   if @people.save
  #     redirect_to people_path
  #   else
  #     render :new
  #   end

  # end

  # def update
  #   @people = Person.find(params[:id])
  #   @people.update_attribute(:age, "")
  # end

  # private 
  # def person_params
  #   params.require(:).permit(:name, :age, :hair_color)
  # end

 

end
