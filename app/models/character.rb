class Character < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :age
    validates :detail
  end

  def self.search(keyword)
    where('name like ?', "%#{keyword}%")
  end
  
end
