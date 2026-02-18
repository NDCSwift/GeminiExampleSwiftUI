//
        //
    //  Project: GeminiExampleSwiftUI
    //  File: ContentView.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI
import FirebaseAI

struct ContentView: View {
    let model = FirebaseAI.firebaseAI(backend: .googleAI())
        .generativeModel(modelName: "gemini-2.5-flash")
    
    @State private var userPrompt = ""
    @State private var aiResponse = ""
    @State private var isLoading = false
    var body: some View {
        VStack {
            Text("Gemini AI")
                .font(.largeTitle)
            
            ScrollView {
                Text(aiResponse.isEmpty ? "Ask me anything..." : aiResponse)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
            }
            .background(Color(.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            
            HStack {
                TextField("Ask a question...", text: $userPrompt)
                    .textFieldStyle(.roundedBorder)
            
                Button {
                    sendMessage()
                } label : {
                    Image(systemName: isLoading ? "ellipsis" : "paperplane.fill")
                        .font(.title2)
                }
                .disabled(userPrompt.isEmpty || isLoading)
            }
        }
        .padding()
    }
    
    func sendMessage() {
        let prompt = userPrompt
        userPrompt = ""
        isLoading = true
        aiResponse = ""
        
        Task {
            do{
                let response = try await model.generateContent(prompt)
                aiResponse = response.text ?? "No response found"
            }
            catch {
                aiResponse = "Error: \(error.localizedDescription)"
            }
            isLoading = false
        }
    }
}

#Preview {
    ContentView()
}
