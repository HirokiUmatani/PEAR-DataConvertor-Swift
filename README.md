### PEAR-DataConvertor-Swift [![GitHub license](https://img.shields.io/badge/LICENSE-MIT%20LICENSE-blue.svg)](https://github.com/HirokiUmatani/PEAR-DataConvertor-Swift/LICENSE) [![CocoaPods](https://img.shields.io/badge/platform-ios-lightgrey.svg)](https://cocoapods.org/pods/PEAR-DataConvertor-Swift) [![CocoaPods](https://img.shields.io/cocoapods/v/PEAR-DataConvertor-Swift.svg)](https://cocoapods.org/pods/PEAR-DataConvertor-Swift)  

====
### Overview
NSData interconversion
### Installation
```
platform :ios, '8.0'  
use_frameworks!  
target 'YOUR_PROJECT_NAME' do  
pod "PEAR-DataConvertor-Swift"  
end
```

### Usage

#### □ Import

```
import PEAR_DataConvertor_Swift
```

#### □ data < = > string
```
        let strData:NSData = DataConvertor.dataFromString("sample message")
        print(strData)
        
        let dataStr:String = DataConvertor.stringFromData(strData)
        print(dataStr)
```

#### □ data < = > int
```
        let intData:NSData = DataConvertor.dataFromInt(1010);
        print(intData)
        
        let dataInt:Int = DataConvertor.intFromData(intData)
        print(dataInt)
```

#### □ data < = > double
```
        let doubleData:NSData = DataConvertor.dataFromDouble(99.9999)
        print(doubleData)
        
        let dataDouble:Double = DataConvertor.doubleFromData(doubleData)
        print(dataDouble)
```

#### □ data < = > array
```
        let arrayData:NSData = DataConvertor.dataFromArray([dataStr,dataInt,dataDouble])
        print(arrayData)
        
        let dataArray:Array = DataConvertor.arrayFromData(arrayData)
        print(dataArray)
```

#### □ data < = > dictionary
```
        let dictData:NSData = DataConvertor.dataFromDictionary([
            "str":dataStr,
            "intData":dataInt,
            "double":doubleData,
            "arrayData":dataArray])
        print(dictData)
        
        let dataDict:Dictionary = DataConvertor.dictionaryFromData(dictData)
        print(dataDict)
```

#### □ data < = > image(png)
```
        let pngData:NSData = DataConvertor.dataFromPNGImage(UIImage(named: "pngsample.png")!)
        print(pngData)
        
        let dataPng:UIImage = DataConvertor.imageFromData(pngData)
        print(dataPng)
```

#### □ data < = > image(jpg)
```
        let jpgData:NSData = DataConvertor.dataFromJPGImage(UIImage(named: "jpgsample.jpg")!, quality: 1.0)
        print(jpgData)
        
        let dataJpg:UIImage = DataConvertor.imageFromData(jpgData)
        print(dataJpg)
```


### Documents
[library document](http://cocoadocs.org/docsets/PEAR-DataConvertor-Swift)

### Licence
[MIT](https://github.com/HirokiUmatani/PEAR-DataConvertor-Swift/blob/master/LICENSE)

### Author
[Hiroki Umatani](https://github.com/HirokiUmatani)
