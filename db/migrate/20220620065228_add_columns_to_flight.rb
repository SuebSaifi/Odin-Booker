class AddColumnsToFlight < ActiveRecord::Migration[6.1]
  def change     
    add_column :flights,:from_airport_id,  :integer
    add_column :flights,:to_airport_id, :integer
    add_column :flights,:arrival_time, :datetime
    add_column :flights,:departure_time, :datetime
    add_column :flights,:duration, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
