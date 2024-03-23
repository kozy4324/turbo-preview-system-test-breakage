require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit articles_url
    page.save_screenshot '1.png'

    click_on 'New Article'
    has_button? 'back'
    page.save_screenshot '2.png'

    click_on 'back'
    click_on 'New Article'
    fill_in 'article[title]', with: 'Title of New Article'
    page.save_screenshot '3.png'

    sleep 3
    click_on 'Create Article'
    has_button? 'New Article'
    # assert_text 'Title of New Article'
    page.save_screenshot '4.png'
  end
end