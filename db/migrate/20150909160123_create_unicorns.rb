class CreateUnicorns < ActiveRecord::Migration
  def change
    create_table :unicorns do |t|
      t.string :name
      t.attachment :photo

      t.timestamp
    end
  end
end
