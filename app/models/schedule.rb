# frozen_string_literal: true

class Schedule < ApplicationRecord
  belongs_to :assignment

  validates :scheduled_at, :schedule_hours, :schedule_minutes, :quotas, presence: true
  validates :schedule_hours, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 24
  }
  validates :schedule_minutes, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 60
  }
  validates :quotas, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
end
