class AddPdfToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :pdf, :string
  end
end
