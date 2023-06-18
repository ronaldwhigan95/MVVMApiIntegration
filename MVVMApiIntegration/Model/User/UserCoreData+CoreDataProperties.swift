//
//  UserCoreData+CoreDataProperties.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 6/18/23.
//
//

import Foundation
import CoreData


extension UserCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserCoreData> {
        return NSFetchRequest<UserCoreData>(entityName: "UserCoreData")
    }

    @NSManaged public var address: String?
    @NSManaged public var email: String?
    @NSManaged public var firstName: String?
    @NSManaged public var image: String?
    @NSManaged public var lastName: String?
    @NSManaged public var userId: String?

}

extension UserCoreData : Identifiable {

}
