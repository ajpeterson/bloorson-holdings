class UpdateLisitngTable < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip 

      t.timestamps
    end
  end
end
