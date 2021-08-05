module Visible
  extend ActiveSupport::Concern

  VALID_STATUS = %w[public private archived]
  included do
    validates :status, inclusion: {in: VALID_STATUS}
  end

  def archived?
    status == 'archived'
  end
end