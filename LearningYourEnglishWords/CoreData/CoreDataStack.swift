//
//  CoreDataStack.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 19.05.2020.
//  Copyright © 2020 Aleksandr Lutenko. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    lazy var persistentContainer: NSPersistentContainer = {
       
       let container = NSPersistentContainer(name: "LearningYourEnglishWords")
       container.loadPersistentStores(completionHandler: { (storeDescription, error) in
           if let error = error as NSError? {
               fatalError("Unresolved error \(error), \(error.userInfo)")
           }
       })
       return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
       let context = persistentContainer.viewContext
       if context.hasChanges {
           do {
               try context.save()
           } catch {
               let nserror = error as NSError
               fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
           }
       }
    }

}
