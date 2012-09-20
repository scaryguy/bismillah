class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.text :content
      t.boolean :active

      t.timestamps
    end
  end
end
