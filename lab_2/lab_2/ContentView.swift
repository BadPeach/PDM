import SwiftUI

struct ContentView: View {
    @State private var message: String = ""
    @State private var displayMessage: String = "Hello from the first screen! 👋🏼"
    @State private var messageHistory: [String] = []

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(spacing: 20) {
                    ScrollView {
                        Text(displayMessage)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: geometry.size.height / 4)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                    }
                    .frame(height: geometry.size.height / 4)

                    TextField("Enter a new message...", text: $message)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                    HStack(spacing: 20) {
                        Button(action: {
                            if !message.isEmpty {
                                displayMessage = message
                                messageHistory.append(message)
                                message = ""
                            }
                        }) {
                            Text("Set message")
                                .padding()
                                .background(Color.cyan)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        Button(action: {
                            displayMessage = "Hello from the first screen! 👋🏼" 
                        }) {
                            Text("Clear message")
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding()

                    NavigationLink(destination: SecondView(currentMessage: displayMessage, messages: messageHistory)) {
                        Text("Go to second screen")
                            .padding()
                            .background(Color.cyan)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .navigationTitle("First screen")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
