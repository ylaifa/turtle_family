class AddCreatorEmailToTurtles < ActiveRecord::Migration[5.2]
  def change
    add_column :turtles, :email, :string
  end
end
