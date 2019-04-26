feature 'changes the bookmarks in the manager' do
  scenario 'a user can add a bookmark' do
    visit('/bookmarks/new')
    fill_in 'ws_url', with: 'http://www.makersacademy.com'
    click_button 'Add Website'

    expect(page).to have_content 'http://www.makersacademy.com'
  end
end
