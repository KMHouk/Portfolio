require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Should include elements1" do
    get :welcome
    assert_select ".home .jumbotron"
    assert :success
  end

  test "Should include elements" do
    get :welcome
    assert_select ".header-ul li", 5
  end
end
