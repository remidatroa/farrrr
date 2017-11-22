class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :type
      t.string :description
      t.string :address
      t.float :lat
      t.float :lng
      t.integer :amount
      t.string :link
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
