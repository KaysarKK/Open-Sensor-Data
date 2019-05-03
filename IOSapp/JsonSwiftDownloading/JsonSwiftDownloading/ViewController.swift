//
//  ViewController.swift
//  JsonSwiftDownloading
//
//  Created by Bakhyt Nazirov on 5/3/19.
//  Copyright © 2019 Bakhyt Nazirov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    final let url = URL(string: "http://192.168.0.101:8000/info/?format=json")
    private var datas = [SensorData]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
    }

    var first = "{ temperature:"
    func downloadJson() {
        guard let downloadURL = url else { return }
        URLSession.shared.dataTask(with: downloadURL) {data, URLResponse, error in
            
            guard let data = data, error == nil, URLResponse != nil else {
                print("something is wrong")
                return
            }
            
            print("downloaded")
            
            print(data)
            
            var printedData = String(decoding: data, as: UTF8.self)
            
            printedData = "{\"SensorData\":" + printedData + "}"
            
            print(printedData)
            
            let newdata = Data(printedData.utf8)
            
            print(newdata)
              do {
                let decoder = JSONDecoder()
                let DownloadedSensors = try decoder.decode(Datas.self, from: newdata)
                self.datas = DownloadedSensors.datas
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }

            } catch {
                print("Something wrong after downloaded")
            }
        }.resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SensorDataCell") as? SensorDataCell else {return UITableViewCell() }
        
        cell.temperature.text = datas[indexPath.row].temp
        cell.timeView.text = datas[indexPath.row].date
        
        if
            let imageURL = URL(string: "http://pngriver.com/wp-content/uploads/2018/04/Download-Temperature-PNG-Clipart.png") {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.imgView.image = image
                    }
                }
        }
    }
        return cell
    }
    
    
}

