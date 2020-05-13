# frozen_string_literal: true

class Schedule < ApplicationRecord
  belongs_to :assignment
  has_many :quota, dependent: :destroy

  accepts_nested_attributes_for :quota, allow_destroy: true

  validates :scheduled_at, presence: true
end
