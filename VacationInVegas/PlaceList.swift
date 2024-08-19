//
//  ContentView.swift
//  VacationInVegas
//
//  Created by Kishan Singh on 13/08/24.
//

import SwiftUI
import SwiftData

struct PlaceList: View {
    @Query(sort: \Place.name) private var places: [Place]
    @State private var showImages = false
    @State private var searchText = ""
    @State private var filteredByInterested = false
    private var predicate: Predicate<Place> {
        #Predicate<Place> {
            if !searchText.isEmpty && filteredByInterested {
                $0.interested && $0.name.localizedStandardContains(searchText)
            } else if !searchText.isEmpty {
                $0.name.localizedStandardContains(searchText)
            } else if filteredByInterested {
                $0.interested
            }  else {
                true
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            List((try? places.filter(predicate)) ?? places) { place in
                HStack {
                    place.image
                        .resizable()
                        .scaledToFit()
                        .clipShape(.rect(cornerRadius: 10.0))
                        .frame(width: 100, height: 100)
                    
                    Text(place.name)
                    
                    Spacer()
                    
                    if place.interested {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .padding(.trailing)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Show Images", systemImage: "photo") {
                        showImages.toggle()
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button("filtered By Interested", systemImage: "star.fill") {
                        filteredByInterested.toggle()
                    }
                    .tint(filteredByInterested ? Color.yellow : Color.accentColor)
                }
            }
            .navigationTitle("Places")
            .searchable(text: $searchText, prompt: "Find a Place")
            .animation(.default, value: 0)
            .sheet(isPresented: $showImages, content: {
                Scrolling()
            })
        }
    }
}

#Preview {
    PlaceList()
        .modelContainer(Place.preview)
}
