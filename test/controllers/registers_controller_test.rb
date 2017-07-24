require 'test_helper'

class RegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @register = registers(:one)
  end

  test "should get index" do
    get registers_url
    assert_response :success
  end

  test "should get new" do
    get new_register_url
    assert_response :success
  end

  test "should create register" do
    assert_difference('Register.count') do
      post registers_url, params: { register: { Address: @register.Address, Age: @register.Age, Education: @register.Education, First_name: @register.First_name, Last_name: @register.Last_name, Occupation: @register.Occupation, Photo: @register.Photo } }
    end

    assert_redirected_to register_url(Register.last)
  end

  test "should show register" do
    get register_url(@register)
    assert_response :success
  end

  test "should get edit" do
    get edit_register_url(@register)
    assert_response :success
  end

  test "should update register" do
    patch register_url(@register), params: { register: { Address: @register.Address, Age: @register.Age, Education: @register.Education, First_name: @register.First_name, Last_name: @register.Last_name, Occupation: @register.Occupation, Photo: @register.Photo } }
    assert_redirected_to register_url(@register)
  end

  test "should destroy register" do
    assert_difference('Register.count', -1) do
      delete register_url(@register)
    end

    assert_redirected_to registers_url
  end
end
