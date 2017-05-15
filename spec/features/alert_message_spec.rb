require 'spec_helper'

feature 'show message', type: :feature do

  selectors = %w(error danger notice success)

  selectors.each do |selector|
    scenario selector, js: false do
      visit home_path(message: selector)
      expect(page).to have_selector(".alert-message-#{selector}")
      expect(page).to have_text("test #{selector} message")
    end
  end
end
