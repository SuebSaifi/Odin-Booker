class RemoveColumnFromFlight < ActiveRecord::Migration[6.1]
  def change
    remove_column :flights, :duration
  end
end
