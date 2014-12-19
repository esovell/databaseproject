class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_title
      t.integer :book_length
      t.binary :book_summary
      t.date :book_date_finished
      t.reference :genre_id
      t.reference :series_id
      t.reference :course_id

      t.timestamps
    end
  end
end
