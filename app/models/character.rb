class Character < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :age
    validates :detail
  end
end
