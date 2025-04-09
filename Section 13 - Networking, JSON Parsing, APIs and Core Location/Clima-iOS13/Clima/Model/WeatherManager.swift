//
//  WeatherManager.swift
//  Clima
//
//  Created by Carlos Alonso Camiña on 9/4/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    //Link URL to the API OpenWeather
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=f515719a3de8b51a18ab171fb98f4300&units=metric"
    
    //Func to get the city name from WeatherController that we want to fetch on API
    func fetchWeather (cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
