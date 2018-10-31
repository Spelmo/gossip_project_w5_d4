class AddIndexToAll < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.belongs_to :user, index: true
      t.timestamps
    end

    create_table :privatemessages do |t|
      t.text :content
      t.timestamps
    end

    add_reference :gossips, :user, foreign_key: true
    add_reference :comments, :user, foreign_key: true
    add_reference :likes, :user, foreign_key: true

    add_reference :users, :city, foreign_key: true

    add_reference :comments, :gossip, foreign_key: true
    add_reference :likes, :gossip, foreign_key: true

    create_table :tag_link, id: false do |t|
      t.belongs_to :gossip, index: true
      t.belongs_to :tag, index: true
    end

    add_reference :privatemessages, :recipient, index: true
    add_reference :privatemessages, :sender, index: true
  end
end
