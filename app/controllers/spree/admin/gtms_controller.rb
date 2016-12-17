class Spree::Admin::GtmsController < Spree::Admin::ResourceController

  def index
    @gtm = Spree::Gtm.first || Spree::Gtm.new
  end

end
