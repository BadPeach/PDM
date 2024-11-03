import SwiftUI

struct SecondView: View {
    var currentMessage: String
    @State var messages: [String]

    var body: some View {
        ScrollView {
            VStack {
                Text("Hello from the second screen! 👋🏼")
                    .font(.largeTitle)
                    .padding()

                Text("Last message:")
                    .font(.title)
                    .padding(.top)
                Text(currentMessage)
                    .font(.title2)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(8)
                    .multilineTextAlignment(.center)

                Text("Message History:")
                    .font(.title)
                    .padding(.top)

                VStack {
                    ForEach(messages, id: \.self) { message in
                        Text(message)
                            .font(.title2)
                            .padding()
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                    }
                }
                .padding(.bottom)

                Button(action: {
                    messages.removeAll() 
                }) {
                    Text("Clear message history")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(.top)
            }
            .padding()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(currentMessage: "Preview message", messages: ["Message 1", "Message 2", "Message 3"])
    }
}
