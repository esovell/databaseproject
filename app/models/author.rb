# create_table “author”, force: true do |t|
# t.string “author_first_name”
# t.string “author_last_name”
# t.date “author_birth_date”
# t.string “author_website”
# end

class Author < ActiveRecord::Base
  has_many :works
  has_many :books, through: :work
  validates :author_first_name, :author_last_name, :presence => true
  validates :author_website, uniqueness: true
  validates :author_website, :author_birthdate, allow_nil: true
end
