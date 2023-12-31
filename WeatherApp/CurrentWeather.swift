//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by ismail karaçayır on 13.08.2023.
//

import Foundation
import UIKit
struct CurrentWeather{
    let description : String
    let status : String
    let degree : Double // derece
    let humidity : Double //nem
    
    init(description: String, status: String, degree: Double, humidity: Double) {
        self.description = description
        self.status = status
        self.degree = degree
        self.humidity = humidity
    }
}
extension CurrentWeather {
    var iconImage : UIImage {
        switch status {
        case "Clear":
            return UIImage(named: "clear-day") ?? UIImage(named: "refresh")!
        case "Rainy":
            return UIImage(named: "rain") ?? UIImage(named: "refresh")!
        default:
            return UIImage(named: "default") ?? UIImage(named: "refresh")!
        }
    }
}
