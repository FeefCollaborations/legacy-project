class Group < ApplicationRecord
  default_scope { order(:id) }
  has_many :charities
  has_many :faqs
  has_one :detail, class_name: GroupDetail.to_s

end
