# frozen_string_literal: true

require 'active_support/core_ext/numeric/time'
require 'test_helper'

describe 'function' do
  it 'should works' do
    date = 1.day.ago - 1.week + 3.hours
    r = Regexp.new(date.year.to_s, Regexp::MULTILINE)
    _(-> { require './index' }).must_output(r)
    puts date
  end
end
