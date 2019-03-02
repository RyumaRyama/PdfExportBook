require 'test_helper'

class ExportControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "PDF Export Book"
  end
  test "should get top_page" do
    get root_url
    assert_response :success
    assert_select "title", "Top | #{@base_title}"
  end

end
