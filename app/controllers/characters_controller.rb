class CharactersController < ApplicationController
  def index
    @keyword = params[:keyword]
    @characters = if @keyword.present?
      Character.search(@keyword)
    else
      Character.all
    end
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

  def self_search(keyword)
    where('name like ?', '%#{keyword}%')
  end

  private
  def params_character
    params.require(:character).permit(:name, :age, :detail)
  end

end
