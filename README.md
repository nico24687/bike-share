<p align="center">
  <img src="https://cdn.iconscout.com/public/images/icon/free/png-512/person-biking-riding-travel-bike-32ba9c65398cb07b-512x512.png" alt="Adop Shop logo"/>
</p>

# Bike Share

[![forthebadge](http://forthebadge.com/images/badges/made-with-ruby.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)

A platform to allow users to analyzes bike share usage in San Francisco. By consuming historical data from CSV's users are able to view a wide range of metrics for bike stations within the Bay area. 

## Getting Started


These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Ensure you have rails installed, if not:

```
gem install rails 
```

### Installing

To get up and running in your browser clone this repo 

Install the dependenices

```
bundle install 
```

Create the database

```
rails db:create
```

Run the migrations

```
rails db:migrate
```

Start the server

```
rails server
```

Visit localhost:3000 in your browser to start exploring information for stations

## Running the tests

Install the dependencies

```
bundle install
```

Run rspec

```
rspec
```


### Test Example

Each test ensures working functionality for a particular user story. 

```
it "they can create a new station" do
    visit "/stations/new"

    fill_in "station[name]", with: "Paddington"
    fill_in "station[dock_count]", with: "100"
    fill_in "station[installation_date]", with: "8/6/2013"
    fill_in "station[city]", with: "London"

    page.find("#btn_submit").click

    expect(current_path).to eq("/stations")
    expect(page).to have_content("Paddington")
    expect(page).to have_content("100")
  end
```

## Built With

* [Sinatra](http://sinatrarb.com/) 
* [Bootstrap](https://github.com/twbs/bootstrap-rubygem) 

## Versioning

Version 1.0

## Authors

* **Nico Lewis** [contact](https://github.com/nico24687)
* **Gabriel Afflitto** [contact](https://github.com/GabrielAfflitto)
* **Zachary Landes** [contact](https://github.com/zacharylandes)

## License

This project is licensed under the MIT License 





