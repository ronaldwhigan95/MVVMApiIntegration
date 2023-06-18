//
//  UserProfileEntity+CoreDataProperties.swift
//  MVVMApiIntegration
//
//  Created by Ronald Chester Whigan on 6/18/23.
//
//

import Foundation
import CoreData


extension UserProfileEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserProfileEntity> {
        return NSFetchRequest<UserProfileEntity>(entityName: "UserProfileEntity")
    }

    @NSManaged public var address: String?
    @NSManaged public var email: String?
    @NSManaged public var firstName: String?
    @NSManaged public var image: String?
    @NSManaged public var lastName: String?
    @NSManaged public var userId: String?

}

extension UserProfileEntity : Identifiable {

}
