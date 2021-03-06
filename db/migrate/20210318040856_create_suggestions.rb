class CreateSuggestions < ActiveRecord::Migration[6.1]
  def change
    create_table :suggestions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :link
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
