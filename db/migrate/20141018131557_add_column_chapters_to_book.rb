class AddColumnChaptersToBook < ActiveRecord::Migration
  def change
    add_column :books, :chapters, :int
  end
end
