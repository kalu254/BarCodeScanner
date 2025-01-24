//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Luka Macharia on 23/01/2025.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    
    @StateObject var viewModel = BarCodeScannerViewModel()
    @State private var scannedCode : String?
    @State private var alerItem: AlertItem?
    
    var body: some View {
        VStack {
            NavigationView {
                VStack{
                    ScannerView(scannedcode: $scannedCode, alertItem: $alerItem).frame(width: .infinity, height: 300)
                    
                    Label( "Scan BarCode", systemImage:
                            "barcode.viewfinder").font(.title)
                    Spacer().frame(height: 60)
                    Text("Not yet scanned")
                        .bold().foregroundColor(.green)
                        .font(.largeTitle)
                        .padding()
              
                }.navigationTitle("BarCode Scanner")
                    .alert(item: $alerItem, content: {
                        alerItem in Alert(title: Text(alerItem.title), message: Text(alerItem.message), dismissButton: alerItem.dismissButton)
                    })
            }
                           
        }
        
    }
}

