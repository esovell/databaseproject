# create_table “series”, force: true do |t|
# t.string “series_title”
# t.binary “series_description”
# t.integer “series_book_count”
# t.integer “series_finished”
# end

class Series < ActiveRecord::Base
  has_many :books
  enum :series_finished => [:Yes, :No]
  validates :series_title, :series_description, :series_book_count, :series_finished, :presence => true
end
