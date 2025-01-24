//
//  Alerts.swift
//  BarCodeScanner
//
//  Created by Luka Macharia on 24/01/2025.
//

import SwiftUI


struct AlertItem: Identifiable {
    var id: UUID = UUID()
    var title: String
    var message: String
    var dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(
        title: "Error",
        message: "This device does not support barcode scanning.",
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type", message: "The value scanned is not valid. This app scans EAN-8 and EAN-13 barcodes only.", dismissButton: .default(Text("OK")))
        
}

