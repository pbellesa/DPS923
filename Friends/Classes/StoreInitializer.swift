//
//  StoreInitializer.swift
//  Classes
//
//  Created by Peter McIntyre on 2015-02-01.
//  Copyright (c) 2015 School of ICT, Seneca College. All rights reserved.
//

import CoreData

class StoreInitializer {
    
    class func create(cdStack: CDStack) {
        
        // Add code to create data
        
        // For each object that you want to create...
        // Initialize an object
        // Set its properties
        // Save changes
        
        // This app will work with the "Example" entity that you can see in the object model
        
        // If you have not yet run the app (in the simulator), 
        // and you want to create your own object model, you can...
        // Comment out (or delete) the 'create data' code below
        // Delete the entity in the object model
        // Edit the Model class, and its fetched results controller
        // Comment out, delete, or edit the data access statements in the '...List' and '...Detail' controllers

        // If you have did run the app (in the simulator),
        // you will have to do the above, AND delete the app from the simulator
        
//        let object1 = NSEntityDescription.insertNewObjectForEntityForName("Example", inManagedObjectContext: cdStack.managedObjectContext!) as NSManagedObject
//        
//        object1.setValue("Peter", forKey: "attribute1")
//        object1.setValue(33, forKey: "attribute2")
//        
//        let object2 = NSEntityDescription.insertNewObjectForEntityForName("Example", inManagedObjectContext: cdStack.managedObjectContext!) as NSManagedObject
//        
//        object2.setValue("Danny", forKey: "attribute1")
//        object2.setValue(29, forKey: "attribute2")
        
        let friend1 = NSEntityDescription.insertNewObjectForEntityForName("Friend", inManagedObjectContext: cdStack.managedObjectContext!) as Friend
        
        friend1.friendName = "Maggie Ha"
        friend1.course = "DPS923"
        friend1.phone = "647-123-4567"
        friend1.email = "maggie.ha@myseneca.ca"
        friend1.dateAdded = newDate(2015, month: 9, day: 16)
        
        let friend2 = NSEntityDescription.insertNewObjectForEntityForName("Friend", inManagedObjectContext: cdStack.managedObjectContext!) as Friend
        
        friend2.friendName = "Pavlo Kuzhel"
        friend2.course = "BTC640"
        friend2.phone = "647-123-4567"
        friend2.email = "pavlo.kuzhel@myseneca.ca"
        friend2.dateAdded = newDate(2015, month: 8, day: 16)
        
        let friend3 = NSEntityDescription.insertNewObjectForEntityForName("Friend", inManagedObjectContext: cdStack.managedObjectContext!) as Friend
        
        friend3.friendName = "Arsalan Khalid"
        friend3.course = "BTC640"
        friend3.phone = "647-123-4567"
        friend3.email = "arsalan.khalid@myseneca.ca"
        friend3.dateAdded = newDate(2015, month: 10, day: 16)
        
        cdStack.saveContext()
    }
    
    // Create a new date object
    class func newDate(year: Int, month: Int, day: Int) -> NSDate {
        
        // Configure the objects we need to create the date
        var cal = NSCalendar(identifier: NSGregorianCalendar)!
        cal.timeZone = NSTimeZone(abbreviation: "GMT")!
        var dc = NSDateComponents()
        
        // Set the values of the date components
        dc.year = year
        dc.month = month
        dc.day = day
        dc.hour = 12
        dc.minute = 0
        dc.second = 0
        
        return cal.dateFromComponents(dc)!
    }
    
}
