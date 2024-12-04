class CharactersController < ApplicationController
  def index
    
  end

  def new
    @character = Character.new()
  end
  
  def create
    @character = Character.new(params_character)
    if @character.save
      redirect_to characters_path
    else
      render :new
    end
    
  end
  def edit
    
  end
  def update
    
  end
  def destroy
    
  end

  private
  def params_character
    params.require(:character).permit(:name, :age, :detail)
  end

end
