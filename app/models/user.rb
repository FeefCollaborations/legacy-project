class User < ApplicationRecord
  enum role: [:standard, :super_admin]
end
