//
//  EventManagement.swift
//  MultiView
//
//  Created by Colin Quelle on 2/24/21.
//  Copyright © 2021 Colin Quelle. All rights reserved.
//

import Foundation

class EventManagement{
    
    var pickUpSword = false;
    var pickUpKey = false;
    var monsterSlain = false;
    var doorUnlocked = false;
    
    func setSword(val: Bool){
        pickUpSword = val;
    }
    
    func getSword() -> Bool{
        return pickUpSword;
    }
    
    func setKey(val: Bool){
        pickUpKey = val;
    }
    
    func getKey() -> Bool {
        return pickUpKey;
    }
    
    func setMonster(val: Bool){
        monsterSlain = val;
    }
    
    func getMonster() -> Bool{
        return monsterSlain;
    }
    
    func setDoor(val: Bool){
        doorUnlocked = val;
    }
    
    func getDoor() -> Bool{
        return doorUnlocked;
    }
    
    public static let manage = EventManagement();
}
