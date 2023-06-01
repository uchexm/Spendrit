class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.integer :author_id
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.decimal :amount
      t.datetime :createdAt

      t.timestamps
    end
  end
end
