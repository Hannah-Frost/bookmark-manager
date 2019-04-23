feature 'index display' do
  scenario 'index displays words' do
    visit '/'
    expect(page).to have_content "Hello, world!"
  end
end
