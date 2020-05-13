# frozen_string_literal: true

module AssignmentHelper
  def date_formatter(date)
    return '' unless date.is_a?(Time)

    date.strftime("%b %d, %Y")
  end

  def updated_at_formatter(date)
    return '' unless date.is_a?(Time)

    date.strftime("%b/%d/%Y - %H:%M")
  end
end
