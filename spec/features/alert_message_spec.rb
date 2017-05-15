require 'spec_helper'

feature 'show message', type: :feature do

  selectors = %w(error danger notice success)

  selectors.each do |selector|
    scenario "with valid selector" do
      visit home_path(message: selector)
      expect(page).to have_selector(".alert-message-#{selector}")
      expect(page).to have_text("test #{selector} message")
    end
  end

  scenario "with  invalid selector" do
    visit home_path(message: "wrong_selector")
    expect(page).to have_selector(".alert-message-notice")
    expect(page).to have_text("test wrong_selector message")
  end
end
