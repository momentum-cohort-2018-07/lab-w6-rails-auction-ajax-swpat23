require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:hippo)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_path item: {
        artist: 'Jean Auguste Dominique Ingres',
        description: 'Oil on canvas',
        image_url: 'https://images.metmuseum.org/CRDImages/rl/web-large/DT717.jpg',
        title: 'Princesse de Broglie',
        starting_bid: '48000'
      }
    end
    assert_response :success
  end
end
