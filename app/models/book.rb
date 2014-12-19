# create_table “book”, force: true do |t|
# t.string “book_title”
# t.integer “book_length”
# t.binary “book_summary”
# t.date “book_date_finished”
# t.integer “genre_id”
# t.integer “series_id”
# t.integer “course_id”
# end

class Book < ActiveRecord::Base
  belongs_to :genre
  belongs_to :series
  belongs_to :course
  has_many :works
  has_many :authors, through: :work
  validates :book_title, :book_length, :book_summary, :book_date_finished, :genre_id, :presence => true
  validates :series_id, :course_id, allow_nil: true
end