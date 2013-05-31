class CreateOoshes < ActiveRecord::Migration
  def change
    create_table :ooshes do |t|
      t.string :full_text
      t.string :keyword
      t.string :extra_text
      t.datetime :stamp

      t.timestamps
    end
  end
end
