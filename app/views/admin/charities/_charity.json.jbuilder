json.extract! charity, :id, :name, :description, :banner_image_url, :banner_image_url, :donation_url, :website_url, :status, :created_at, :updated_at
json.url charity_url(charity, format: :json)
