//
//  CurrentWeatherModel.swift
//  WeatherApp
//
//  Created by ismail karaçayır on 14.08.2023.
//

import Foundation
import UIKit

struct CurrentWaetherModel{
    
    let description : String
    let status : String
    let degree : String // derece
    let humidity : String //nem
    let iconImage : UIImage
    
    init(data: CurrentWeather) {
        self.description = data.description
        self.status = data.status
        self.degree = "\(Int(data.degree))°"
        self.humidity = "\(Int(data.humidity))%"
        self.iconImage = data.iconImage
    }
}

