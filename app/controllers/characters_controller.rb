class CharactersController < ApplicationController
  def index
    @keyword = params[:keyword]
    @characters = if @keyword.present?
      Character.order(created_at: :desc).search(@keyword).page(params[:page]).per(5) # 検索結果にページネーションを適用
    else
      Character.order(created_at: :desc).page(params[:page]).per(5) # 1ページあたり5件表示
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

  private
  def params_character
    params.require(:character).permit(:name, :age, :detail)
  end

end
