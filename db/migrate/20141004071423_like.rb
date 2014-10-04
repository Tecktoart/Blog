class Like < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :article_id

      t.timestamps
    end
  end

end
