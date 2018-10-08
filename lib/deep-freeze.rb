# encoding: UTF-8
# frozen_string_literal: true

module Enumerable
  def deep_freeze
    each { |value| value.respond_to?(:deep_freeze) ? value.deep_freeze : value.freeze }
    freeze
  end
end unless Enumerable.instance_methods.include?(:deep_freeze)
