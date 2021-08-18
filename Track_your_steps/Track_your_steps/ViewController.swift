//
//  ViewController.swift
//  Track_your_steps
//
//  Created by Sunita Nhemafuki on 8/5/21.
//  Copyright © 2021 Sunita Nhemafuki. All rights reserved.
//

    import UIKit
    //import HealthKit
    import Charts

   class ViewController: UIViewController {
        
        @IBOutlet weak var displayBox: UILabel!
        @IBOutlet weak var LineChartBox: LineChartView!
            let quote1 = "Keep going"
            let quote2 = "Walk a mile everyday"
            let quote3 = "You can do it"

        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            let data = [9873, 4940, 4187, 9079, 1975, 5150, 678]
            graphLineChart(dataArray: data)
    }
    
    func graphLineChart(dataArray: [Int]) {
    LineChartBox.frame = CGRect(x: 0, y:0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width / 2)
    
    LineChartBox.center.x = self.view.center.x
    LineChartBox.center.y = self.view.center.y - 240
    
    //Settings when chart has no data
    LineChartBox.noDataText = "No data avaiable"
    LineChartBox.noDataTextColor = UIColor.black
    
    //Initialize Array that will eventually be displayed on the graph
    var entries = [ChartDataEntry]()

    //For every element in given dataset
    //Set the X and Y coordinates in a data chart entry and add to the entire list
    for i in 0..<dataArray.count {
        let value = ChartDataEntry(x: Double(i), y: Double(dataArray[i]))
            entries.append(value)
    }
    //Use the entries object and a label string to make a LineChartDataSet object
    let dataSet = LineChartDataSet(entries: entries, label: "Line Chart")
    
    //Customize graph settings to your liking
    dataSet.colors = ChartColorTemplates.joyful()
    
    //Make object that will be added to the chart and set it to the variable in the Storyboard
    let data = LineChartData(dataSet: dataSet)
    LineChartBox.data = data
    
    //Add settings for the chartBox
    LineChartBox.chartDescription?.text = "Pi Values"
    
    //Animations
    LineChartBox.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
}

        @IBAction func buttonController(_ sender: Any) {
            
           let n = Int.random(in: 1...3)
            
           if n == 1
           {
            displayBox.text = quote1;
            }
            if n == 2
            {
            displayBox.text = quote2;
            }
            if n == 3
           {
                displayBox.text = quote3;
            }
        }
   }
    
        



    
    
