//
//  BarCodeScannerViewModel.swift
//  BarCodeScanner
//
//  Created by Luka Macharia on 24/01/2025.
//

import SwiftUI

final class BarCodeScannerViewModel: ObservableObject {
    @Published var scannedCode: String?
    @Published var isScanning: Bool = false
}
