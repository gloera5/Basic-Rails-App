class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, index: true
      t.user_id :index

      t.timestamps
    end
  end
end
