class Bookcase < ApplicationRecord
  has_many :books, dependent: :nullify
end
