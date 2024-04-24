class Todo < ApplicationRecord
  def change
    add_column :title
  end
end
