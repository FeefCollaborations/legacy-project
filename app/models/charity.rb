class Charity < ApplicationRecord
  default_scope { order(:id) }
  belongs_to :group
  enum status: [ :inactive, :active ]
  mount_uploader :banner_image, ImageAssetUploader
end
