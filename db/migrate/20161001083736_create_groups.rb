class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.title :string
      t.description :text
      t.timestamps
    end
  end
end
