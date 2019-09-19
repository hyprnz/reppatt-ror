require 'test_helper'
require 'minitest/mock'

class Article22ControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "show without database" do
    article22 = Article22.new(title:"foo2149", text: "bar2149")
    mockRepo = Minitest::Mock.new
    mockRepo.expect :find, article22, [ 1 ]
    controller = Article22sController.new(mockRepo)
    controller.params = { "id" => 1 }
    result = controller.show
    assert_equal("foo2149", result.title)
    assert_equal("bar2149", result.text)
  end
end
