# frozen_string_literal: true

class Assignment < ApplicationRecord
  belongs_to :user
  has_many :schedules

  accepts_nested_attributes_for :schedules, allow_destroy: true

  before_create :format_dates

  validates :name, :start_date, :end_date, presence: true
  validate :date_constraint

  def options_for_select
    available_days.map { |date| [date.strftime('%A'), date.to_datetime] }
  end

  private

  def available_days
    return [] unless valid_dates?

    (start_date.to_date..end_date.to_date).to_a.map(&:to_date)
  end

  def format_dates
    self.start_date = start_date.beginning_of_day
    self.end_date = end_date.end_of_day
  end

  def date_constraint
    return unless valid_dates?

    errors.add(:end_date, 'must be greater than the start date') if end_date < start_date
  end

  def valid_dates?
    start_date.present? && end_date.present?
  end
end
