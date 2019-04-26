feature 'changes the bookmarks in the manager' do
  scenario 'a user can add a bookmark' do
    visit('/bookmarks/new')
    fill_in 'title', with: 'Makers Academy'
    fill_in 'url', with: 'http://www.makersacademy.com'
    click_button 'Add Website'

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  end
end
