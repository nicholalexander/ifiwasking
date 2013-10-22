class CreateProclamations < ActiveRecord::Migration
  def change
    create_table :proclamations do |t|
      t.string :proclamation

      t.timestamps
    end
  end
end
