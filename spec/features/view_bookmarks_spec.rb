feature 'bookmark list' do
  scenario 'shows a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'List of bookmarks: []'
  end
end
