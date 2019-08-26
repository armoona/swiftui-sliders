import SwiftUI
import Sliders

struct RangeSliderExamplesView: View {
    @State var range1 = 0.2...0.8
    @State var range2 = 0.2...0.8
    @State var range3 = 0.1...0.9
    @State var range4 = 0.1...0.9
    
    var body: some View {
        ScrollView {
            RangeSlider(range: $range1)
            RangeSlider(range: $range2)
                .clippedValue(false)
            RangeSlider(range: $range3)
                .sliderStyle(
                    GradientSliderStyle(colors: [.blue, .red])
                )
            RangeSlider(range: $range4)
                .thickness(6)
                .clippedValue(false)
                .sliderStyle(
                    GradientSliderStyle()
                )
        }
        .padding()
    }
}

struct RangeSliderExamplesView_Previews: PreviewProvider {
    static var previews: some View {
        RangeSliderExamplesView()
    }
}
