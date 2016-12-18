class Spree::Gtm < ActiveRecord::Base
  validates :gtm_accountid, presence: true


  def self.gtm_accountid
      first.gtm_accountid
    end

end
