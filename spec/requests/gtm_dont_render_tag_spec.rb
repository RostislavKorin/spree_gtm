require 'spec_helper'

describe "GTM value doesnt set in controller" do
  context "value doesnt set in controller " do
    it "should doesnt render tag" do
      visit ('/')
      page.all('body script', visible: false).each do |script|
        script.text != "dataLayer"
      end
    end
  end
end
