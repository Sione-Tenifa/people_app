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

  def create
    @people = Person.new(person_params)
 
    if @people.save
      redirect_to people_path
    else
      render :new
    end

  end

  def person_params
    params.require(:person).permit(:name, :age, :hair_color)
  end

 

end
