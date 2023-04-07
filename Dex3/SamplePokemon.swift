//
//  SamplePokemon.swift
//  Dex3
//
//  Created by Aymeric Pilaert on 07/04/2023.
//

import CoreData
import Foundation

struct SamplePokemon {
    static let samplePokemon = {
        let context = PersistenceController.preview.container.viewContext
        
        let fetchRequest: NSFetchRequest<Pokemon> = Pokemon.fetchRequest()
        fetchRequest.fetchLimit = 1
        
        let results = try! context.fetch(fetchRequest)
        
        return results.first!
    }()
}
