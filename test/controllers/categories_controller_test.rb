require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
   
   def setup
    @category = Category.create(name: "Sports")
     @user = User.create(username: "jhon",email:"john@example.com",password:"123",admin: true)
   end
   
    test "should get categories index" do
        get :index
        assert_response :success
    end

    test "should get new " do
    session[:user_id] = @user.id
    get :new
    assert_response :success
    end
    
    test "should get show" do
    get(:show,{ 'id' => @category.id })
    assert_response :success
    end
end