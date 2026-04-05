# ✨ Gemini AI — Firebase AI + SwiftUI

A minimal SwiftUI chat interface powered by Google's Gemini 2.5 Flash model via the Firebase AI SDK — showing how to send prompts and get AI responses in a native iOS app.

---

## 🤔 What this is

GeminiExampleSwiftUI is the quickest path to running Gemini AI in a SwiftUI app. It uses the `FirebaseAI` SDK to talk to `gemini-2.5-flash`, with a simple prompt/response UI. Type a question, hit send, and the response appears — no complex setup beyond adding your `GoogleService-Info.plist`.

## ✅ Why you'd use it

- **Fastest Gemini + SwiftUI starting point** — minimal boilerplate, one model call, one view
- **Firebase AI SDK pattern** — shows how to initialise `FirebaseAI`, create a `GenerativeModel`, and call `generateContent`
- **Async/await throughout** — no completion handlers, clean Swift concurrency
- **Drop-in chat UI** — `ScrollView` + `TextField` + send button pattern you can extend immediately

## 📺 From the NoahDoesCoding YouTube Channel

This project is a companion to a tutorial on [@NoahDoesCoding97](https://www.youtube.com/@NoahDoesCoding97). Subscribe for weekly SwiftUI tutorials.

---

## ⚠️ Setup Required

You'll need your own `GoogleService-Info.plist` from [Firebase Console](https://firebase.google.com) added to the project directory, and the Firebase iOS SDK from [github.com/firebase/firebase-ios-sdk](https://github.com/firebase/firebase-ios-sdk).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/GeminiExampleSwiftUI.git
cd GeminiExampleSwiftUI
```
Or select "Clone Git Repository…" when Xcode launches.

### 2. Add Firebase
- Add the Firebase iOS SDK via **File → Add Package Dependencies** in Xcode
- Drop your `GoogleService-Info.plist` into the project folder

### 3. Open in Xcode
- Double-click `GeminiExampleSwiftUI.xcodeproj`.

### 4. Set Your Development Team

In Xcode, navigate to: **TARGET → Signing & Capabilities → Team**
- Select your personal or organizational team.

### 5. Update the Bundle Identifier
- Change `com.example.MyApp` to a unique identifier.

### 6. Run
Select a simulator or connected device and hit **Run**.

---

## 🛠️ Notes

- Never commit `GoogleService-Info.plist` to a public repo
- Gemini API calls require an active internet connection
- If you see a code signing error, check that Team and Bundle ID are set

## 📦 Requirements

- Xcode 15+
- iOS 17+
- Firebase project with Gemini API enabled

📺 [Watch the guide on YouTube](https://www.youtube.com/@NoahDoesCoding97)
