//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Victor Brigido on 05/01/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack (spacing: 20) {
                Text("Bem-vindo ao Weather App")
                    .bold().font(.title)
                Text("Compartilhe sua localização atual para saber a previsão do tempo na sua região")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight:.infinity )
    }
}

#Preview {
    WelcomeView()
}
