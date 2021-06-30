require 'test_helper'

class ImcControllerTest < ActionDispatch::IntegrationTest
  test "should get calc_imc" do
    get imc_calc_imc_url
    assert_response :success
  end

end
