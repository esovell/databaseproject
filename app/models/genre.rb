# create_table “genre”, force: true do |t|
# t.string “genre_name”
# t.binary “genre_description”
# end

class Genre < ActiveRecord::Base
  has_many :books
  validates :genre_name, :genre_description, :presence => true
end