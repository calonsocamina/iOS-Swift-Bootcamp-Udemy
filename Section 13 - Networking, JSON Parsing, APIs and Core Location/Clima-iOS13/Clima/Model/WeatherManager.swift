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
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        //1. Create a URL
        if let url = URL(string: urlString) {
            
            //2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    parseJSON(weatherData: safeData)
                }
            }
            
            //4. Start the task
            task.resume()
        }
    }
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do{
           let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            
            print(weather.temperatureString)
            
        } catch {
            print(error)
        }
    }
}
