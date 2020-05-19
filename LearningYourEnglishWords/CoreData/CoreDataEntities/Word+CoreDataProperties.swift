//
//  Word+CoreDataProperties.swift
//  LearningYourEnglishWords
//
//  Created by Aleksandr Lutenko on 19.05.2020.
//  Copyright © 2020 Aleksandr Lutenko. All rights reserved.
//
//

import Foundation
import CoreData


extension Word {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Word> {
        return NSFetchRequest<Word>(entityName: "Word")
    }

    @NSManaged public var englishName: String?
    @NSManaged public var russianName: String?
    @NSManaged public var isLearned: Bool
    @NSManaged public var isVerb: Bool

}
