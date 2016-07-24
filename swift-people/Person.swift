//
//  Person.swift
//  swift-people
//
//  Created by Laticia Chance on 7/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Person {
    let name: String
    
    //mutalbe int opt
    
    private(set) var ageInYears: Int?
    private(set) var skills = [String]()
    
    //calculate property of type bool - that returns false
    var qualifiedTutor: Bool { return skills.count >= 4 }
    
    //designated init
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    // default init that calls the designated init to set name prop
    convenience init() {
        self.init(name: "Arya Stark")
    }
    
    func celebrateBirthday() -> String {
        if let nonOptionalAgeInYears = self.ageInYears {
            let ageAndBday = "Happy \(nonOptionalAgeInYears + 1)\(nonOptionalAgeInYears.ordinal()), \(self.name))!!!"
            return ageAndBday.uppercaseString
            
        } else {
            
            let happyBday = "Happy Birthday, \(self.name)!!!"
            return happyBday.uppercaseString
        }
        
    }
    
    func learnSkillBash() {
        if !skills.contains("bash") {
            skills.append("bash")
        }
        
    }
    
    func learnSkillXcode() {
        if !skills.contains("Xcode") {
            skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        if !skills.contains("Objective-C") {
            skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        if !skills.contains("Swift") {
            skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        if !skills.contains("Interface Builder") {
            skills.append("Interface Builder")
        }
    }
}
