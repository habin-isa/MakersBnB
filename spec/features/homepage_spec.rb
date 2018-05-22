
feature 'Homepage' do

  scenario 'Can run app and check page content' do
    visit('/listings')
    expect(page).to have_content 'Bork BnB'
  end

  scenario 'Shows form to list your Bork' do
    visit ('/listings')
    expect(page).to have_content 'List your pet space here:'
  end

  scenario 'Can submit form & listing shows on page' do
    visit ('/listings')
    fill_in 'title', with: '5* Putney Pug Pit'
    click_button 'List your Bork'
    expect(page).to have_content '5* Putney Pug Pit'
  end



end
