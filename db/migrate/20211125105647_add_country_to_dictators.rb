class AddCountryToDictators < ActiveRecord::Migration[6.0]
  def change
    add_column :dictators, :country, :string
  end
end
