class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
