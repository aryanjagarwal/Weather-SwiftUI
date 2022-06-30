//
//  ContentView.swift
//  Weather-SwiftUI
//
//  Created by Aryan Jagarwal on 29/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackGroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack {
                CityTextView(cityName: "Jaipur, RJ")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 35)
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "Tue",
                                   imageName: "cloud.sun.fill",
                                   temperature: 32)
                    WeatherDayView(dayOfWeek: "Wed",
                                   imageName: "cloud.fill",
                                   temperature: 29)
                    WeatherDayView(dayOfWeek: "Thu",
                                   imageName: "cloud.rain.fill",
                                   temperature: 28)
                    WeatherDayView(dayOfWeek: "Fri",
                                   imageName: "cloud.bolt.rain.fill",
                                   temperature: 28)
                    WeatherDayView(dayOfWeek: "Sat",
                                   imageName: "sun.haze.fill",
                                   temperature: 28)
                    WeatherDayView(dayOfWeek: "Sun",
                                   imageName: "cloud.sun.fill",
                                   temperature: 28)
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackGroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
            
    }
}
