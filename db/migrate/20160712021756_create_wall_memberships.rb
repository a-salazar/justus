class CreateWallMemberships < ActiveRecord::Migration
  def change
    create_table :wall_memberships do |t|
      t.references :user, index: true, foreign_key: true
      t.references :wall, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
