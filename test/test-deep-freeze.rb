# encoding: UTF-8
# frozen_string_literal: true

require_relative "helper"

class DeepFreezeTest < Test::Unit::TestCase
  test "Array#deep_freeze" do
    array = [{ a: { b: [{ c: [], (d = Class.new) => Class.new }] } }]
    assert_same array, array.deep_freeze
    assert_true array.frozen?
    assert_true array[0].frozen?
    assert_true array[0][:a].frozen?
    assert_true array[0][:a][:b].frozen?
    assert_true array[0][:a][:b][0].frozen?
    assert_true array[0][:a][:b][0][:c].frozen?
    assert_true d.frozen? # Check if key is frozen.
    assert_true array[0][:a][:b][0][d].frozen?
  end

  test "Hash#deep_freeze" do
    hash = { a: { b: [{ c: [], (d = Class.new) => Class.new }] } }
    assert_same hash, hash.deep_freeze
    assert_true hash.frozen?
    assert_true hash[:a].frozen?
    assert_true hash[:a][:b].frozen?
    assert_true hash[:a][:b][0].frozen?
    assert_true hash[:a][:b][0][:c].frozen?
    assert_true d.frozen? # Check if key is frozen.
    assert_true hash[:a][:b][0][d].frozen?
  end
end
