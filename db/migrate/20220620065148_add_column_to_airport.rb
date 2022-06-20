class AddColumnToAirport < ActiveRecord::Migration[6.1]
  def change
    add_column :airports, :code, :string
  end
end
