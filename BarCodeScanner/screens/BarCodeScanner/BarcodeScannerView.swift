//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Luka Macharia on 23/01/2025.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    
    @StateObject var viewModel = BarCodeScannerViewModel()
    
    
    var body: some View {
        VStack {
            NavigationView {
                VStack{
                    ScannerView(scannedcode: $viewModel.scannedCode, alertItem: $viewModel.alertItem).frame(width: .infinity, height: 300)
        
                    Label("Scan BarCode", systemImage:
                            "barcode.viewfinder").font(.title)
                    Spacer().frame(height: 60)
                    Text(viewModel.status)
                        .bold().foregroundColor(viewModel.statusTextColor)
                        .font(.largeTitle)
                        .padding()
              
                }.navigationTitle("BarCode Scanner")
                    .alert(item: $viewModel.alertItem, content: {
                        alerItem in Alert(title: Text(alerItem.title), message: Text(alerItem.message), dismissButton: alerItem.dismissButton)
                    })
            }
                           
        }
        
    }
}

