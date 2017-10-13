class Group < ApplicationRecord
  default_scope { order(:id) }
  has_many :charities
  has_many :faqs
  has_one :detail, class_name: GroupDetail.to_s

  mount_uploader :homepage_banner_image, ImageAssetUploader
  mount_uploader :logo_image, ImageAssetUploader
  mount_uploader :favicon_image, ImageAssetUploader
  mount_uploader :favicon_image_16_by_16, ImageAssetUploader
  mount_uploader :favicon_image_32_by_32, ImageAssetUploader
end
