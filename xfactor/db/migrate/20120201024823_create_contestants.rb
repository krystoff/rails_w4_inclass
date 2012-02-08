class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :name
      t.text :talent

      t.timestamps
    end
  end
end
