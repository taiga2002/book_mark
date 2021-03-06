//
//  BookwormApp.swift
//  Bookworm
//
//  Created by 北尾　大河 on 2021/11/08.
//

import SwiftUI

@main
struct BookwormApp: App {
    let persistenceController = PersistenceController.shared
    @Environment(\.scenePhase) var scenePhase
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
    }
}
