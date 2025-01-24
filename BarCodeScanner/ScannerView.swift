//
//  ScannerView.swift
//  BarCodeScanner
//
//  Created by Luka Macharia on 23/01/2025.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {

    @Binding var scannedcode: String?
    @Binding var alertItem: AlertItem?
    

    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
            }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {
        
    }
    
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(scannerView: self)
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView){
            self.scannerView = scannerView
        }
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurfaceError(error: CameraError) {
            switch error {
            case .invalidDeviceInput:
                scannerView.alertItem = AlertContext.invalidDeviceInput
            case .invalidScannedValue:
                scannerView.alertItem = AlertContext.invalidScannedType
                
            }

        }
        
    
    }
        
    var body: some View {
        Text("ScannerView")
    }
}
