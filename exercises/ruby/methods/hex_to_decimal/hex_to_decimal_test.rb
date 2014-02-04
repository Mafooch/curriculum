require 'minitest/spec'
require 'minitest/autorun'

require_relative 'hex_to_decimal'

describe "#hex_to_decimal" do
  it "converts single number from hex to decimal" do
    hex_to_decimal('9').must_equal 9
  end

  it "converts single letter from hex to decimal" do
    hex_to_decimal('E').must_equal 14
  end

  it "converts multiple numbers" do
    hex_to_decimal('5A').must_equal 90
  end

  it "converts multiple letters" do
    hex_to_decimal('CC').must_equal 204
  end

  it "converts multiple numbers and letters" do
    hex_to_decimal('1A2B3C').must_equal 1715004
  end

  it "is case insensitive" do
    hex_to_decimal('1a2b3c').must_equal 1715004
  end
end
