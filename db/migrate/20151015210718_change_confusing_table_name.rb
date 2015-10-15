class ChangeConfusingTableName < ActiveRecord::Migration
  def change
    rename_table :unicorns, :garbage_pail_kids
  end
end
