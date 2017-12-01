require 'spec_helper'

describe "when a visitor visits the trips index" do
  it "sees a descriptive explanation message" do
    visit '/trips'

    expect(page).to have_content("Here are the trip details")
  end

  it "can click the link to create a new trip" do
    visit '/trips'
    click_link('Create a new trip')

    expect(page).to have_current_path("/trips/new")
    expect(page).to have_content("Enter a new trip")
  end

  it "clicks the name of the trip to display its information" do
    Trip.create(duration: "5", start_date: "05-14-2010", start_station_name: "Train", end_date: "50-54-2010", end_station_name: "California", bike_id: "540", subscription_type: "Subscriber", zip_code: "80219")
    visit '/trips'
    click_link('View')

    expect(page).to have_content("5")
    expect(page).to have_current_path("/trips/1")
  end

  it "clicks the edit link to edit trip information" do
    Trip.create(duration: "5", start_date: "05-14-2010", start_station_name: "Train", end_date: "50-54-2010", end_station_name: "California", bike_id: "540", subscription_type: "Subscriber", zip_code: "80219")
    visit '/trips'
    click_link('Edit')

    expect(page).to have_content("Edit your trip")
    expect(page).to have_current_path("/trips/1/edit")
  end

  it "clicks the delete button which deletes trip and redirects to index" do
    Trip.create(duration: "5", start_date: "05-14-2010", start_station_name: "Train", end_date: "50-54-2010", end_station_name: "California", bike_id: "540", subscription_type: "Subscriber", zip_code: "80219")
    visit '/trips'
    click_on('delete')

    expect(page).to have_content("Trip details")
      expect(Trip.count).to eq(0)
  end

  # it "clicks the edit link and is presented an edit form" do
  #   Station.create(name: "The station", dock_count: 33, city: "San Francisco", installation_date: "04-03-1204")
  #   visit '/stations'
  #   click_link('Edit')
  #
  #   expect(page).to have_content("Edit your station")
  # end
  #
  # it "clicks the delete button which deletes station and redirects to index" do
  #   Station.create(name: "The station", dock_count: 33, city: "San Francisco", installation_date: "04-03-1204")
  #   visit '/stations'
  #   click_on('delete')
  #
  #   expect(page).to have_content("Bike Station Details")
  #   expect(Station.count).to eq(0)
  # end

end
