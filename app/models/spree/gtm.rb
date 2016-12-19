class Spree::Gtm < ActiveRecord::Base
  validates :gtm_accountid, presence: true

  def self.activated?
    first.present?
  end

  def self.gtm_accountid
    first.gtm_accountid
  end

end
