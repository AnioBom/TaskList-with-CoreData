//
//  StorageManager.swift
//  TaskList
//
//  Created by mac on 10/7/22.
//

import Foundation
import CoreData

class StorageManager {
    
    static let store = StorageManager()
    
    private let context: NSManagedObjectContext
    
    private init() {
        context = persistentContainer.viewContext
    }
    
    private var taskList: [NewTask] = []
    
    // MARK: - Core Data stack

    var persistentContainer: NSPersistentContainer = {
       
        let container = NSPersistentContainer(name: "TaskList")
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

    func fetchData() {
        let fetchRequest = NewTask.fetchRequest()
        
        do {
            
        }
    }
}
