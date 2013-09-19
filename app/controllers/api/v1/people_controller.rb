class Api::V1::PeopleController < Api::V1::ApiController

  def index
    @people = Person.all

    respond_with @people
  end

end
