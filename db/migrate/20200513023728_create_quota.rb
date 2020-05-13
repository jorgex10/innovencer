class CreateQuota < ActiveRecord::Migration[6.0]
  def change
    create_table :quota do |t|
      t.integer :q_hours, null: false, default: 0
      t.integer :q_minutes, null: false, default: 0
      t.integer :amount, null: false, default: 0
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
