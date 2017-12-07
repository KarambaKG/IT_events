require "rails_helper"

describe Region, :type => :model do

it "Должен создаться новый регион" do
  new_region = Region.create!(name: 'Karabalta')
  expect(Region.last).to eq(new_region)
end
end
