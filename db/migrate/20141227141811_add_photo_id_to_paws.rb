class AddPhotoIdToPaws < ActiveRecord::Migration
  def change
    add_reference :paws, :photo, index: true
  end
end
