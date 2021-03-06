require "application_system_test_case"

class TweetsTest < ApplicationSystemTestCase
  setup do
    @tweet = tweets(:one)
  end

  test "visiting the index" do
    visit tweets_url
    assert_selector "h1", text: "Tweets"
  end

  test "creating a Tweet" do
    visit tweets_url
    click_on "New Tweet"

    fill_in "Content", with: @tweet.content
    fill_in "Image url", with: @tweet.image_url
    fill_in "Like", with: @tweet.like
    fill_in "Retweet", with: @tweet.retweet
    click_on "Create Tweet"

    assert_text "Tweet was successfully created"
    click_on "Back"
  end

  test "updating a Tweet" do
    visit tweets_url
    click_on "Edit", match: :first

    fill_in "Content", with: @tweet.content
    fill_in "Image url", with: @tweet.image_url
    fill_in "Like", with: @tweet.like
    fill_in "Retweet", with: @tweet.retweet
    click_on "Update Tweet"

    assert_text "Tweet was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweet" do
    visit tweets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweet was successfully destroyed"
  end
end
