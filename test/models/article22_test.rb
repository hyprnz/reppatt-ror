require 'test_helper'

class Article22Test < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  # def test_the_truth
  #   assert true
  # end

  ##

  test "Save and Read with Database" do
    article = Article22.new({})
    assert_not article.save
  end
end
