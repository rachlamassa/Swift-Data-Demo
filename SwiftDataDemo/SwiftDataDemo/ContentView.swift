//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Rachael LaMassa on 1/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            
            Text("Tap on this button to add data")
            
            Button("Add an item") {
                addItem()
            }
            
            List {
                ForEach (items) { item in
                    
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button {
                            updateItem(item)
                        } label: {
                            Image(systemName: "arrow.triangle.2.circlepath")
                        }
                    }
                    
                }
                .onDelete { indexes in
                    for index in indexes {
                        deleteItem(items[index])
                    }
                }
            }
            
        }
        .padding()
    }
    
    func addItem() {
        // create the item
        let item = DataItem(name: "Test Item")
        
        // add the item to the data context
        context.insert(item)
    }
    
    func deleteItem(_ item: DataItem) {
        // delete specifies item
        context.delete(item)
    }
    
    func updateItem(_ item: DataItem) {
        // edit the item data
        item.name = "Updated Test Item"
        
        // save the context
        try? context.save()
    }
    
}

#Preview {
    ContentView()
}
