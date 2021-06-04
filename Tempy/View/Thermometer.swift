import SwiftUI

struct Thermometer: View {
    @State var binding = 0.0
    
    private let scales = ["\u{00B0} F", "\u{00B0} C", "\u{00B0} K"]
    
    var body: some View {
        Form {
            Section(header: Text("Temperature:")){
            TemperatureValueSlider(
                temperature1: $binding,
                temperatureRange: 0...100
            )
        }
            
            Section(header: Text("Result")) {
                Text("\(scales[0]) - \(binding)") //is unicode front or back?
                Text("\(scales[1]) - \((binding + 459.67) * 5 / 9)")
                Text("\(scales[2]) - \((binding - 32) * 5 / 9)")
            }
            
            Section(content: {
                Circle()
                    .foregroundColor(.yellow)
                    .padding()
            }).frame(height: 300)
        }
    }
}

struct Thermometer_Previews: PreviewProvider {
    static var previews: some View {
        Thermometer()
    }
}

class TempConverter {
    
}
