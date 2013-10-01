require 'spec_helper'

describe Link do
  it "should return a date string" do
    link = create(:link)
    expect(link.created_date).to eq("2013-09-13")	
  end
end
