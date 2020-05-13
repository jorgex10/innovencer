class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.datetime :scheduled_at, null: false
      t.integer :schedule_hours, null: false, default: 0
      t.integer :schedule_minutes, null: false, default: 0
      t.integer :quotas, null: false, default: 0
      t.references :assignment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
