//
//  BarCodeScannerViewModel.swift
//  BarCodeScanner
//
//  Created by Luka Macharia on 24/01/2025.
//

import SwiftUI

final class BarCodeScannerViewModel: ObservableObject {
    @Published var scannedCode: String = ""
    @Published var alertItem: AlertItem?
    
    var status: String {
        scannedCode.isEmpty ? "No code scanned yet" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
