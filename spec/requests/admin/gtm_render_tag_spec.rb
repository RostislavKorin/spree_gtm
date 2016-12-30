require 'spec_helper'

describe "Tag implementation on the pages" do

    context "gtm id implement in tag " do
      it "should render tag with gtm id" do
        fill_in_gtm_id
        visit ('/')
        page.all('body script', visible: false).each do |script|
          script.text == "dataLayer, bag"
        end
      end
    end

    
    context "tag present on cart page " do
      it "should render tag" do
        fill_in_gtm_id
        visit ('/cart')
        page.all('body script', visible: false).each do |script|
          script.text == "dataLayer, cart"
        end
      end
    end

    context "tag present on product page " do
      it "should render tag on product page" do
        fill_in_gtm_id
        visit ('/products')
        page.all('body script', visible: false).each do |script|
          script.text == "dataLayer, product"
        end
      end
    end

    context "tag present on order page " do
      it "should render tag on order page" do
        fill_in_gtm_id
        visit ('/order')
        page.all('body script', visible: false).each do |script|
          script.text == "dataLayer, order"
        end
      end
    end
end
