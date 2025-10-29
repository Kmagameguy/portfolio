# frozen_string_literal: true

require "bundler"
Bundler.require :test

require "minitest/autorun"
require "minitest/spec"
require "minitest/stub_const"
require "minitest/focus"
require "mocha/minitest"

Bundler.setup(:test)

# Mock RSpec-style context blocks
module Minitest
  class Test
    extend Minitest::Spec::DSL

    class << self
      alias context describe
    end
  end
end
