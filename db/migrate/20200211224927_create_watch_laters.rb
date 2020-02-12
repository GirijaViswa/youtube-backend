class CreateWatchLaters < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_laters do |t|
      t.belongs_to :user
      t.string :url
      t.string :title
      t.boolean :saved
      t.timestamps
    end
  end
end
