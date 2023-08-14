//
//  ViewController.swift
//  WeatherApp
//
//  Created by ismail karaçayır on 13.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var btnRefresh: UIButton!
    @IBOutlet weak var lblSummary: UILabel!
    @IBOutlet weak var lblPreciptation: UILabel!
    @IBOutlet weak var lblHumidity: UILabel!
    @IBOutlet weak var lblTemperature: UILabel!
    let WeatherApiKey = WeatherKey().getKey()
    override func viewDidLoad() {
        super.viewDidLoad()
        let weather = CurrentWeather(description: "bulutlu", status: "Clear", degree: 25, humidity: 20)
        let weatherModel = CurrentWaetherModel(data: weather)
        showWeather(model: weatherModel)
    }
    
    func showWeather(model: CurrentWaetherModel){
        weatherIcon.image = model.iconImage
        lblHumidity.text = model.humidity
        lblTemperature.text = model.degree
        lblSummary.text = model.status
        
        
    }


}

