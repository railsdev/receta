require 'spec_helper.rb'

feature 'Looking up for recipes', js: true do
  scenario 'finding recipes' do
    visit '/'
    fill_in 'keywords', with: 'Baked'
    click_on 'Search'

    expect(page).to have_content("Baked Potato")
  end
end
