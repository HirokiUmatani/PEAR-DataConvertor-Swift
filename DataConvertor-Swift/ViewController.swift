//
//  ViewController.swift
//  DataConvertor-Swift
//
//  Created by hirokiumatani on 2015/11/28.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // data < = > string
        let strData:NSData = DataConvertor.dataFromString("sample message")
        print(strData)
        
        let dataStr:String = DataConvertor.stringFromData(strData)
        print(dataStr)
        
        // data < = > int
        let intData:NSData = DataConvertor.dataFromInt(1010);
        print(intData)
        
        let dataInt:Int = DataConvertor.intFromData(intData)
        print(dataInt)
        
        // data < = > double
        let doubleData:NSData = DataConvertor.dataFromDouble(99.9999)
        print(doubleData)
        
        let dataDouble:Double = DataConvertor.doubleFromData(doubleData)
        print(dataDouble)
        
        // data < = > array
        let arrayData:NSData = DataConvertor.dataFromArray([dataStr,dataInt,dataDouble])
        print(arrayData)
        
        let dataArray:Array = DataConvertor.arrayFromData(arrayData)
        print(dataArray)
        
        // data < = > dictionary
        let dictData:NSData = DataConvertor.dataFromDictionary([
            "str":dataStr,
            "intData":dataInt,
            "double":doubleData,
            "arrayData":dataArray])
        print(dictData)
        
        let dataDict:Dictionary = DataConvertor.dictionaryFromData(dictData)
        print(dataDict)
        
        // data < = > image(png)
        let pngData:NSData = DataConvertor.dataFromPNGImage(UIImage(named: "pngsample.png")!)
        print(pngData)
        
        let dataPng:UIImage = DataConvertor.imageFromData(pngData)
        print(dataPng)
        
        // data < = > image(jpg)
        let jpgData:NSData = DataConvertor.dataFromJPGImage(UIImage(named: "jpgsample.jpg")!, quality: 1.0)
        print(jpgData)
        
        let dataJpg:UIImage = DataConvertor.imageFromData(jpgData)
        print(dataJpg)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

