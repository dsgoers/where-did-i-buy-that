class InitialMigration < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name, null: false
    end

    create_table :items do |t|
      t.string :name, null: false
    end

    create_table :users do |t|
      t.string :name, null: false
    end

    create_table :purchases do |t|
      t.references :store, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :timestamp, null: false
      t.decimal :price, null: false
    end

    create_table :groups do |t|
      t.string :name, null: false
    end

    create_table :group_permissions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.index [:user_id, :group_id], unique: true
    end
  end
end
