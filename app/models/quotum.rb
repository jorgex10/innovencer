# frozen_string_literal: true

class Quotum < ApplicationRecord
  belongs_to :schedule

  validates :q_hours, :q_minutes, :amount, presence: true
  validates :q_hours, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 24
  }
  validates :q_minutes, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 60
  }
  validates :amount, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
end
