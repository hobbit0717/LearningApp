//
//  TestView.swift
//  LearningApp
//
//  Created by JH on 2021-08-12.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        if model.currentQuestion != nil {
            
            VStack {
                // Question number
                Text("Question \(model.currentQuestionIndex + 1) of \(model.currentModule?.test.questions.count ?? 0)")
                
                
                // Question
                CodeTextView()
                
                // Answers
                
                // Button
                
            }
            .navigationBarTitle("\(model.currentModule?.category ?? "") Test")
        }
        // IOS 14.5 has bug where .onAppear modifier for Navigation Link of Test View does not get triggered
        // below is temporary fix
        else {
            // Test hasn't loaded yet
            ProgressView()
        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
