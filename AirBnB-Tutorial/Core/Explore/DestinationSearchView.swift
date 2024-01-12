//
//  DestinationSearchView.swift
//  AirBnB-Tutorial
//
//  Created by Web and App on 12/01/2024.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @State var destination: String = ""
    
    @State var fromDate: Date = Date()
    @State var toDate: Date = Date()
    @State var guestCount: Int = 0
    
    @Binding var isShowing: Bool
    
    @State var selectedOption: DestinationSearchOptions = .location
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Button {
                    withAnimation(.snappy) {
                        isShowing.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .resizable()
                        .foregroundStyle(.black)
                        .frame(width: 22, height: 22)
                }
                
                Spacer()
                
                if !destination.isEmpty {
                    Button {
                        withAnimation(.snappy) {
                            destination = ""
                        }
                    } label: {
                        Text("Clear")
                            .foregroundStyle(.black)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                }
                
            }
            .padding(.bottom)
            
            // Where to
            VStack {
                if selectedOption == .location {
                    VStack(alignment: .leading) {
                        Text("Where to?")
                            .font(.headline)
                        
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.small)
                            
                            TextField("Search destinations", text: $destination)
                                .font(.subheadline)
                        }
                        .padding(.vertical)
                        .padding(.horizontal, 15)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black.opacity(0.35), lineWidth: 0.5)
                                .frame(height: 50)
                        }
                    }
                    
                } else {
                    CollapsedPickerView(title: "Where", description: "Set Location")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .location }
            }
            
            
            // date selection view
            VStack(alignment: .leading, spacing: 16) {
                if selectedOption == .dates {
                    Text("When's your trip?")
                        .font(.headline)
                    
                    VStack(spacing: 8) {
                        DatePicker("From", selection: $fromDate, displayedComponents: .date)

                        Divider()
                        
                        DatePicker("To", selection: $toDate, displayedComponents: .date)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                } else {
                    CollapsedPickerView(title: "When", description: "Add Dates")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .dates }
            }
            
            
            // date selection view
            VStack(alignment: .leading, spacing: 16) {
                if selectedOption == .guests {
                    Text("When's your trip?")
                        .font(.headline)
                    
                    Stepper("\(guestCount) adults", onIncrement: {
                        guestCount += 1
                    }, onDecrement: {
                        guard guestCount > 0 else {return}
                        guestCount -= 1
                    })
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    CollapsedPickerView(title: "Who", description: "Add Guests")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .guests }
            }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 10)
            .padding(.bottom)
    }
}

#Preview {
    DestinationSearchView(fromDate: Date(), toDate: Date(), isShowing: .constant(true))
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.footnote)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text(description)
                        .foregroundStyle(.black)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
        }
    }
}
