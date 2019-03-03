class Product < ApplicationRecord
  mount_uploader :pdf, PdfUploader
end
