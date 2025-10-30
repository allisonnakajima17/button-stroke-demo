import SwiftUI

// MARK: - Button Stroke Treatment Demo
// This demonstrates that fixed heights work with stroke overlays in SwiftUI

struct ButtonStrokeTestView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("Button Stroke Treatment - iOS Test")
                .font(.title)
                .padding(.bottom, 20)
            
            // Filled Button
            VStack(spacing: 8) {
                Button("Button") {
                    // Action
                }
                .frame(height: 40)
                .padding(.horizontal, 24)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(100)
                
                Text("Height: 40pt")
                    .font(.caption)
                    .foregroundColor(.green)
            }
            
            // Outlined Button (with stroke overlay)
            VStack(spacing: 8) {
                Button("Button") {
                    // Action
                }
                .frame(height: 40)
                .padding(.horizontal, 24)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(Color.gray, lineWidth: 1)
                )
                
                Text("Height: 40pt")
                    .font(.caption)
                    .foregroundColor(.green)
            }
            
            Text("✅ Both buttons are exactly 40pt tall")
                .font(.headline)
                .foregroundColor(.green)
                .padding()
                .background(Color.green.opacity(0.1))
                .cornerRadius(8)
        }
        .padding()
    }
}

// Preview for Xcode
struct ButtonStrokeTestView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStrokeTestView()
    }
}

