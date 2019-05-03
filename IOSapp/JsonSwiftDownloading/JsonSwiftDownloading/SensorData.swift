//
//  SensorData.swift
//  JsonSwiftDownloading
//
//  Created by Bakhyt Nazirov on 5/3/19.
//  Copyright © 2019 Bakhyt Nazirov. All rights reserved.
//

import UIKit

class Datas: Codable {
    let datas: [SensorData]
    
   init(datas: [SensorData]) {
       self.datas = datas
    }
}

class SensorData: Codable {

    let id: String
    let temp: String
    let humidity: String
    let date: String
    let device: String

    init(id: String, temp: String, humidity: String, date: String, device: String) {
        self.id = id
        self.temp = temp
        self.humidity = humidity
        self.date = date
        self.device = device
    }
}
