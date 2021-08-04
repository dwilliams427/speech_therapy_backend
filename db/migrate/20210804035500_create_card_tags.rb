class CreateCardTags < ActiveRecord::Migration[6.1]
  def change
    create_table :card_tags do |t|
      t.integer :card_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
