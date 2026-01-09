//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Ayush Kumar Singh on 09/01/26.
//

import SwiftUI
import Combine

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
