class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.reference :book_id
      t.reference :author_id

      t.timestamps
    end
  end
end
