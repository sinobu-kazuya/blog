class CreatePoems < ActiveRecord::Migration[5.0]
  def change
    create_table :poems do |t|
      t.string                  :name, null: false, index: true, unique: true
      t.text                    :text
      t.text                    :image
      t.timestamps
    end
  end
end
