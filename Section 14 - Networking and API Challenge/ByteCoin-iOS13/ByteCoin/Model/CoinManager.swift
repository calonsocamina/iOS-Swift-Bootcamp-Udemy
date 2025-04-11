//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdateCoinRate(_ coinManager: CoinManager, price: String, currency: String)
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    let baseURL = "https://api-realtime.exrates.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "dc3aad9f-4e17-48a2-b54f-ab2ebbcb9fea"
    
    var delegate: CoinManagerDelegate?
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String){
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData = data {
                    if let price = self.parseJSON(_data: safeData) {
                        let coinModel = CoinModel(rate: price)
                        self.delegate?.didUpdateCoinRate(self, price: coinModel.rateString, currency: currency)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_data: Data) -> Double? {
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(CoindData.self, from: _data)
            let lastPrice = decodedData.rate
            print(lastPrice)
            return lastPrice
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }

    
}
