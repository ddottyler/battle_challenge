feature 'seeing player hitpoints' do
  scenario 'expects players to be able to see hitpoints' do
    visit('/')
    fill_in :name_1, with: "Tom"
    fill_in :name_2, with: "Dan"
    click_button "Create players"
    visit('/play')
    expect(page).to have_content "Dan: 60HP"
  end
end
