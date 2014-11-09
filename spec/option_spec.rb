require 'spec_helper'

describe '.prase' do
  it "should return hash which has key of :category" do
    option = Spacestuff::Option.new
    actual = option.parse(["-c", "certain_category"])
    expect(actual[:category]).to eq("certain_category")
  end

  it "should return hash which has key of :background" do
    option = Spacestuff::Option.new
    actual = option.parse(["-b", "certain_background.png"])
    expect(actual[:background]).to eq("certain_background.png")
  end

  it "should return hash which has key of :stuff" do
    option = Spacestuff::Option.new
    actual = option.parse(["-s", "certain_stuff.png"])
    expect(actual[:stuff]).to eq("certain_stuff.png")
  end

  it "should return hash which has key of :output_filename" do
    option = Spacestuff::Option.new
    actual = option.parse(["-o", "output.jpg"])
    expect(actual[:output_filename]).to eq("output.jpg")
  end
end
