class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.timestamps
      t.text       :text,      null: false
      t.references :user_id,      null: false
      t.references :prototype_id, null: false
    end
  end
end
