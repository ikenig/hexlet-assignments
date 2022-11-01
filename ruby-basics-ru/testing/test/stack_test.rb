# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def setup
    @subject = Stack.new(%w[a b c])
  end

  def test_initializie
    refute_empty @subject
  end

  def test_pop
    @subject.pop!
    assert_equal @subject.to_a, %w[a b]
  end

  def test_push
    @subject.push!('d')
    assert_equal @subject.to_a, %w[a b c d]
  end

  def test_empty
    assert_empty Stack.new
  end

  def test_to_a
    assert_kind_of Array, @subject.to_a
  end

  def test_clear
    @subject.clear!
    assert_empty @subject
  end

  def size
    assert_equal @subject.size, 3
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
