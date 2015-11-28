//
//  DataConvertor.swift
//  DataConvertor-Swift
//
//  Created by hirokiumatani on 2015/11/28.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

import UIKit

public class DataConvertor: NSObject
{
    // MARK: Data => AnyObject
    
    /** string -> data */
    public class func dataFromString(string:String) -> NSData
    {
        return string.dataUsingEncoding(NSUTF8StringEncoding)!
    }
    
    /** int -> data */
    public class func dataFromInt(int:Int) -> NSData
    {
        var intVar: Int = int
        let data = NSData(bytes: &intVar, length: sizeof(Int))
        return data
    }
    
    /** double -> data */
    public class func dataFromDouble(double_:Double) -> NSData
    {
        var doubleVar: Double = double_
        let data = NSData(bytes: &doubleVar, length: sizeof(Int))
        return data
    }

    /** array -> data */
    public class func dataFromArray(array:[AnyObject]) -> NSData
    {
        return NSKeyedArchiver.archivedDataWithRootObject(array as AnyObject)
    }
    
    /** dictionary -> data */
    public class func dataFromDictionary(dictionary:[String:AnyObject]) -> NSData
    {
        return NSKeyedArchiver.archivedDataWithRootObject(dictionary as AnyObject);
    }
    
    /** image(png) -> data */
    public class func dataFromPNGImage(image:UIImage) -> NSData
    {
        return NSData(data: UIImagePNGRepresentation(image)!)
    }
    
    /** image(jpg) -> data */
    public class func dataFromJPGImage(image:UIImage , quality:CGFloat) -> NSData
    {
        return NSData(data: UIImageJPEGRepresentation(image, quality)!)
    }
    
    // MARK: Data <= AnyObject
    
    /** data -> string */
    public class func stringFromData(data:NSData) -> String
    {
        return String(data: data, encoding: NSUTF8StringEncoding)!
    }

    /** data -> int */
    public class func intFromData(data:NSData) -> Int
    {
        var result:Int = 0;
        data.getBytes(&result, length:sizeof(Int))
        return result
    }
    
    /** data -> double */
    public class func doubleFromData(data:NSData) -> Double
    {
        var result:Double = 0.0;
        data.getBytes(&result, length:sizeof(Int))
        return result
    }
    
    /** data -> array */
    public class func arrayFromData(data:NSData) -> [AnyObject]
    {
        return (NSKeyedUnarchiver.unarchiveObjectWithData(data) as? Array)!
    }
    
    /** data -> dictionary */
    public class func dictionaryFromData(data:NSData) -> [String:AnyObject]
    {
        return (NSKeyedUnarchiver.unarchiveObjectWithData(data) as? Dictionary)!
    }

    /** data -> image */
    public class func imageFromData(data:NSData) -> UIImage
    {
        return UIImage(data: data)!
    }
    
}
