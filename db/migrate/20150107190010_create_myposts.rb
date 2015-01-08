class CreateMyposts < ActiveRecord::Migration
  def self.up
    create_table :myposts do |t|
      t.string :title
      t.text :comment
      t.datetime :post_date

      t.timestamps
    end
  end

  def self.down
    drop_table :myposts
  end
end
