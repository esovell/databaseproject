# create_table “work”, force: true do |t|
# t.integer “book_id”
# t.integer “author_id”
# end

class Work < ActiveRecord::Base
  belongs_to :book
  belongs_to :author
  validates :author_id, :book_id, :presence => true
end