//
//  ContentView.swift
//  project-19-overview
//
//  Created by Roro Solutions on 08/09/22.
//

import SwiftUI
//struct ContentView: View {
//    @State private var searchText = ""
//
//    var body: some View {
//        NavigationView {
//            Text("Searching for \(searchText)")
//                .searchable(text: $searchText, prompt: "Look for something")
//                .navigationTitle("Searching")
//        }
//    }
//}


//struct ContentView: View {
//    @State private var searchText = ""
//    let allNames = ["Subh", "Vina", "Melvin", "Stefanie"]
//
//    var body: some View {
//        NavigationView {
//            List(filteredNames, id: \.self) { name in
//                Text(name)
//            }
//            .searchable(text: $searchText, prompt: "Look for something")
//            .navigationTitle("Searching")
//        }
//    }
//
//    var filteredNames: [String] {
//        if searchText.isEmpty {
//            return allNames
//        } else {
//            return allNames.filter { $0.contains(searchText) }
//        }
//    }
//}


//lecture-3-Using groups as transparent layout containers
//struct UserView: View {
//    var body: some View {
//        Group {
//            Text("Name: Paul")
//            Text("Country: England")
//            Text("Pets: Luna and Arya")
//        }
//        .font(.title)
//    }
//}
//
//struct ContentView: View {
//    @State private var layoutVertically = false
//
////    var body: some View {
////        Group {
////            if layoutVertically {
////                VStack {
////                    UserView()
////                }
////            } else {
////                HStack {
////                    UserView()
////                }
////            }
////        }
////        .onTapGesture {
////            layoutVertically.toggle()
////        }
////    }
//    /*You might wonder how often you need to have alternative layouts like this, but the answer might surprise you: it’s really common! You see, this is exactly what you want to happen when trying to write code that works across multiple device sizes – if we want layout to happen vertically when horizontal space is constrained, but horizontally otherwise. Apple provides a very simple solution called size classes, which is a thoroughly vague way of telling us how much space we have for our views.
//
//*/
//
//    @Environment(\.horizontalSizeClass) var sizeClass
//
//        var body: some View {
////            if sizeClass == .compact {
////                VStack {
////                    UserView()
////                }
////            } else {
////                HStack {
////                    UserView()
////                }
////            }
//
//            if sizeClass == .compact {
//                VStack(content: UserView.init)
//            } else {
//                HStack(content: UserView.init)
//            }
//        }//this will automatically adapt a/c to size of device
//}









// lecture-2-Using alert() and sheet() with optionals
//struct User: Identifiable {
//    var id = "Taylor Swift"
//}
//struct ContentView: View {
//    @State private var selectedUser: User? = nil
//    var body: some View {
//        Text("Hello, World!")
//            .onTapGesture {
//                selectedUser = User()
//            }
//            .sheet(item: $selectedUser) { user in
//                Text(user.id)
//            }
//    } //that simple code, whenever you tap “Hello, World!” a sheet saying “Taylor Swift” appears. As soon as the sheet is dismissed, SwiftUI sets selectedUser back to nil.
    
//    @State private var selectedUser: User? = nil
//        @State private var isShowingUser = false
//
//        var body: some View {
//            Text("Hello, World!")
//                .onTapGesture {
//                    selectedUser = User()
//                    isShowingUser = true
//                }
//                .sheet(isPresented: $isShowingUser) {
//                    Text(selectedUser?.id ?? "Unknown")
//                }
//        } // this code doing same as previous one but lottle bit lenghty
    
    
    //things become diffrenet in case of alert
//    @State private var selectedUser: User? = nil
//        @State private var isShowingUser = false
//
//        var body: some View {
//            Text("Hello, World!")
//                .onTapGesture {
//                    selectedUser = User()
//                    isShowingUser = true
//                }
////                .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser) { user in
////                    Button(user.id) { }
////                }
//                .alert("Welcome", isPresented: $isShowingUser) {
//                    Button("OK") { }
//                }
//        }
//
//
//}

//lecture-1-Working with two side by side views in SwiftUI

//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            Text("Hello, world!")
//                .navigationTitle("Primary")
//        }
//        NavigationView {
//            Text("Hello, world!")
//                .navigationTitle("Primary")
//
//            Text("Secondary")
//        }

//        NavigationView {
//            NavigationLink {
//                Text("New secondary")
//            } label: {
//                Text("Hello, World!")
//            }
//            .navigationTitle("Primary")
//
//            Text("Secondary")
//        }
  //  }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
