class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user
      t.references :subscription_plan

      t.timestamps
    end
    add_index :subscriptions, :user_id
    add_index :subscriptions, :subscription_plan_id
  end
end
