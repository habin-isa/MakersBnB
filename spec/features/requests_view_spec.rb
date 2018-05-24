feature 'Requests' do

  scenario 'Can click on Spaces link to take user to Spaces page' do
    visit ('/requests')
    click_on 'Spaces'
    expect(page).to have_current_path('/spaces')
  end

end
