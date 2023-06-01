class RenameAuthorIdColumnInExpenses < ActiveRecord::Migration[7.0]
  def change
    rename_column :expenses, :authorId, :author_id
  end
end