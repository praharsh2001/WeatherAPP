//
//  ViewModel.swift
//  WeatherApp
//
//  Created by Praharsh Patel on 1/31/23.
//

import Foundation
import Firebase

class ViewModel: ObservableObject{
    func addData (latitude: Double, longitude: Double) {
        let db = Firestore.firestore()
        
        db.collection("Locations").addDocument(data: ["Latitude":latitude, "Longitutde":longitude])
        
    }
}
