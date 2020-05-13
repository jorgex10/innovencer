class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.datetime :scheduled_at, null: false
      t.references :assignment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
