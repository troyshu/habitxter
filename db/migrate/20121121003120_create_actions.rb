class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.text :notes

      t.timestamps
    end
  end
end
