# Design and Build a Nested Data Structure

Shopping_Mall = {
  Information_Booth: [
  ],
  Restroom: [
    'Women',
    'Men',
    'Family'
  ],
  Forever21: {
    gender: [
      'Women',
      'Men'
    ],
    style: 'teens',
    fitting_room: {
      total_rooms: 12,
      max_items: 7
    },
    cashier: {
      total_checkout_stations: 5,
      total_return_stations: 2
    },
  Charlotte_Russe: {
    gender: [
      'Women'
    ],
    style: 'teens',
    fitting_room: {
      total_rooms: 8,
      max_items: 5
    },
    cashier: {
      total_checkout_stations: 3,
      total_return_station: 1
    }
  },
  Restaurants: {
    Ethnic_Cuisine: {
      Asian: [
        "Panda Express",
        "Sushirito",
        "Jinya Ramen Bar",
        "P.F. Chang's China Bistro",
        "Sarku Japan"
      ],
      American: [
        "BJ's Restaurant and Brewhouse",
        "California Pizza Kitchen",
        "Cheesecake Factory"
      ],
      European: [
         "Buca di Beppo",
         "Euro Grill",
         "Saint Peter Restaurant"
      ],
      Mediterranean: [
        "Garlic Mediterranean Grill",
        "Falafel Bite",
        "Obed Mediterranean Cuisine"
      ]
    }
  }
}



Shopping_Mall[:Information_Booth].push('Directory')

Shopping_Mall[:Information_Booth].push('Attendant')

Shopping_Mall[:Restroom][0]

Shopping_Mall[:Forever21][:gender]

Shopping_Mall[:Forever21][:fitting_room][:total_rooms]

Shopping_Mall[:Charlotte_Russe][:cashier][:total_checkout_stations]

Shopping_Mall[:Restaurants][:Ethnic_Cuisine][:Asian]

Shopping_Mall[:Restaurants][:Ethnic_Cuisine][:American][1]

Shopping_Mall[:Restaurants][:Ethnic_Cuisine][:European].push("Olive Garden")