import SwiftUI

struct TemperatureValueSlider: View {
    @Binding var temperature1: Double
    
    let temperatureRange: ClosedRange<Double>
    
     var coldToWarmGradient = LinearGradient(
        gradient: Gradient(
            colors: [.blue, .yellow, .orange, .red]),
        startPoint: .leading, endPoint: .trailing
    )
    
    var body: some View {
        HStack {
            //replacewith styled number from range
            Slider(value: $temperature1, in: temperatureRange, step: 1.0)
                .background(coldToWarmGradient)
                .foregroundColor(.white)
                .cornerRadius(8.0)
            //replacewith styled number from range
        }
    }
}

struct TemperatureValueSlider_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureValueSlider(temperature1: .constant(1.0), temperatureRange: 0...100)
    }
}
