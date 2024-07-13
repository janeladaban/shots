//
//  Extensions.swift
//  shots
//
//  Created by Jane on 6/28/24.
//

import Foundation
import SwiftUI

extension Text {    
    func extensionTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
    
    func extensionHeaderTitle() -> some View {
        self.font(.headline)
            .foregroundColor(Color("AccentColor"))
    }
    
    func extensionHeaderCount() -> some View {
            self.font(.subheadline)
            .foregroundColor(Color("AccentColor"))
    }
    
    func extensionQuestion() -> some View {
        self.font(.title3)
            .bold()
    }
}
