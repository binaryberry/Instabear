class AddPhotoIdToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :photo, index: true
    add_foreign_key :comments, :photos
  end
end
