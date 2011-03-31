class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :term_id
      t.text :comment
    end
  end

  def self.down
    drop_table :comments
  end
end
