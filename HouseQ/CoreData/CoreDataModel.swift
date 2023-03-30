//
//  CoreDataModel.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 25/08/2022.
//

import Foundation
import CoreData
import SwiftUI

class CoreDataModel: ObservableObject {
    let container: NSPersistentContainer
    @Published var savedEntities: [User] = []
    
    init () {
        container = NSPersistentContainer(name: "HouseQ")
        container.loadPersistentStores {description, error in
            if let error = error {
                print("[-] Error while loading the core data. \(error)")
            }
            else {
                print("[+] Data loaded succesfully!")
            }
        }
        fetchUsers()
    }
    
    func fetchUsers () {
        let request = NSFetchRequest<User>(entityName: "User")
        
        do{
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("[-] Unable to fetch users \(error)")
        }
    }
    
    func addUser(name: String, num: String, email: String, pass: String){
        let newUser = User(context: container.viewContext)
        newUser.id = UUID()
        newUser.name = name
        newUser.phone = num
        newUser.email = email
        newUser.password = pass
        saveData()
        print("[+] User added successfully!")
    }
    
//    func updateUser(user: UserData){
//        user.fname =
//
//    }
    
    func deleteUser(user: User){
//        let user =
        container.viewContext.delete(user)
        saveData()
    }
    
    func userExists(_ email: String, _ pass: String) -> Bool {
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
            fetchRequest.predicate = NSPredicate(format: "email == %@", email)
        
        return ((try? container.viewContext.count(for: fetchRequest)) ?? 0) > 0
        }
    
    func saveData() {
        do{
            try container.viewContext.save()
            fetchUsers()
        } catch let error {
            print("[-] Error in saving data. \(error)")
        }
    }
    
}

