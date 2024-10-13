class RenameDecscriptionToContent < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :description, :content
  end
end
