class CreateSpreeGtm < ActiveRecord::Migration
  def change
    create_table :spree_gtms do |t|
      t.string :gtm_accountid
    end
  end
end
