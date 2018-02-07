class CreateDogTreats < ActiveRecord::Migration[5.0]
  def change
    create_table :dog_treats do |t|
      t.string :name
      t.text :description
      t.integer :rating
      t.timestamps
    end
  end
end
