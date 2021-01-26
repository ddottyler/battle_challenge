def sign_in_and_play
  visit('/')
    fill_in :name_1, with: "P1"
    fill_in :name_2, with: "P2"
    click_button "Create players"
end

def attack_and_confirm
  click_button 'Attack'
  click_button 'OK'
end