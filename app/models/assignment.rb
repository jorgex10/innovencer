class Assignment < ApplicationRecord
  belongs_to :user

  before_create :format_dates

  validates :name, :start_date, :end_date, presence:  true
  validate :date_constraint

  private

  def format_dates
    self.start_date = self.start_date.beginning_of_day
    self.end_date = self.end_date.end_of_day
  end

  def date_constraint
    errors.add(:end_date, 'must be greater than the start date') if end_date < start_date
  end
end
