class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :topic
      t.string :description, :scale => 8

      t.timestamps null: false
    end
  end
end
