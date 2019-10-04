class CreateComment22s < ActiveRecord::Migration[6.0]
  def change
    create_table :comment22s do |t|
      t.string :commenter
      t.text :body
      t.references :article22, null: false, foreign_key: true

      t.timestamps
    end
  end
end
