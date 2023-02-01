//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Praharsh Patel on 1/31/23.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name).bold().font(.title)
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))").fontWeight(.light)
                    Text(weather.main.feelsLike.roundDouble() + "°").font(.system(size: 100)).fontWeight(.bold).padding()

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                
//                VStack {
//
//                    HStack {
//                        Text(weather.main.feelsLike.roundDouble() + "°").font(.system(size: 100)).fontWeight(.bold).padding()
//                    }
//                }
//                .frame(maxWidth: .infinity)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(.orange)
        .preferredColorScheme(.dark)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
