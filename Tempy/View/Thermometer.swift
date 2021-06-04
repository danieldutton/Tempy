import SwiftUI

struct Thermometer: View {
    @State var binding = 0.0
    
    var body: some View {
        Form {
            Section(header: Text("Temperature:")){
            TemperatureValueSlider(
                temperature1: $binding,
                temperatureRange: 0...100
            )
        }
            
            Section(header: Text("Result")) {
                Text("F - \(0.0)")
                Text("C - \(0.0)")
                Text("K - \(0.0)")
            }
        }
        
        ZStack {
            Circle()
                .foregroundColor(.white)
        }
    }
}

struct Thermometer_Previews: PreviewProvider {
    static var previews: some View {
        Thermometer()
    }
}
