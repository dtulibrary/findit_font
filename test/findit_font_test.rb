require 'test_helper'

class FinditFontTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test "engine is loaded" do
    assert_equal ::Rails::Engine, FinditFont::Engine.superclass
  end

  test "fonts are served" do
    get "/assets/findit.eot"
    assert_response :success
    get "/assets/findit.ttf"
    assert_response :success
    get "/assets/findit.woff"
    assert_response :success
  end

  test "stylesheets are served" do
    get "/assets/findit-font.css"
    assert_findit_font(response)
  end

  test "stylesheets contain asset pipeline references to fonts" do
    get "/assets/findit-font.css"
    assert_match "/assets/findit.eot",  response.body
    assert_match "/assets/findit.eot?#iefix", response.body
    assert_match "/assets/findit.woff", response.body
    assert_match "/assets/findit.ttf",  response.body
    assert_match "/assets/findit.svg#findit", response.body
  end

  test "stylesheet is available in a scss import" do
    get "/assets/scss-import.css"
    assert_findit_font(response)
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end

  def assert_findit_font(response)
    assert_response :success
    assert_match(/font-family:\s*'findit';/, response.body)
  end
end
