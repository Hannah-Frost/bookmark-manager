feature 'bookmark list' do
  scenario 'shows a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'List of bookmarks:'
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.twitter.com'
  end
end