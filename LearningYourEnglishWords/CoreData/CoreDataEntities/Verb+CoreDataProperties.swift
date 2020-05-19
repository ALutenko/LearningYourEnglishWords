//
//  Verb+CoreDataProperties.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 19.05.2020.
//  Copyright © 2020 Aleksandr Lutenko. All rights reserved.
//
//

import Foundation
import CoreData


extension Verb {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Verb> {
        return NSFetchRequest<Verb>(entityName: "Verb")
    }

    @NSManaged public var v2: String?
    @NSManaged public var v3: String?
    @NSManaged public var isRight: Bool

}
