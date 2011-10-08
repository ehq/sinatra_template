require_relative 'test_helper'

describe "The truth" do
  it "should be truthful" do
    assert 2 + 2 == 4
  end

  it "should not be falsy" do
    assert 2 + 2 != 3
  end
end
