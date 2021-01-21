feature 'check homepage has testing infrastructure working' do
  scenario 'should have testing infrastructure working' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end