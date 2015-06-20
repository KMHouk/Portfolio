require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Load form submission" do
    get :new
    assert_response :success
  end

  test "Create form submission" do
    post :create, :contact => {:name => "Test", :email => "test@example.com", :message => "Testing Message"}
    assert_response :redirect
  end


end
