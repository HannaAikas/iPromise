require "rails_helper"
require "support/features/clearance_helpers"

RSpec.feature "User signs out" do
  scenario "signs out" do
    sign_in
    click_link "Sign out"

    expect(page).to have_content("Haven't got an account?")
  end
end
