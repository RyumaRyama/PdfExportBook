class Product < ApplicationRecord
  mount_uploader :pdf, ImageUploader
end
