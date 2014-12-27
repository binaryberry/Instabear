class CreatePaws < ActiveRecord::Migration
  def change
    create_table :paws do |t|
      t.integer :votes

      t.timestamps null: false
    end
  end
end
