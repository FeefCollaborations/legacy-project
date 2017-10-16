class Charity < ApplicationRecord
  default_scope { order(:id) }
  belongs_to :group
  enum status: [ :inactive, :active ]
end
