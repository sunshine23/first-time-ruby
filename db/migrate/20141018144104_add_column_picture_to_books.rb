class AddColumnPictureToBooks < ActiveRecord::Migration
  def change
    add_column :books, :picture, :string
  end
end
