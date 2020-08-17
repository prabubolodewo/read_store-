class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories, id: false do |t|
      t.binary :id, limit: 36, primary_key: true, :null => false
      t.string :name 

      t.timestamps
    end
  end
end
