class Book < ApplicationRecord
  belongs_to :bookcase, optional: true
  belongs_to :author
  validate :is_the_bookcase_on_limit?
  validates :title, uniqueness: true

  def is_the_bookcase_on_limit?
    if (self.bookcase != nil) && (self.bookcase.books.count >= self.bookcase.limit)
      errors.add(:base, "Bookcase filled.")
    end
  end
end
