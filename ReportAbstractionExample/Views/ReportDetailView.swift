//
//  ReportDetailView.swift
//  ReportAbstractionExample
//
//  Created by Jacobo de Juan Millon on 2021-11-25.
//

import SwiftUI

struct ReportDetailView: View {
    //MARK: Stored property
    let thisReport: Report
    
    //MARK: Compuuted property
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(thisReport.name)
                    .bold()
                    .font(.title)
                HStack {
                    Text("Grade:")
                    Text("\(thisReport.grade)")
                }
                
                Text(thisReport.comment)
                Spacer()
            }
        }
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // For the "thisReport" parameter, we supply, as an argument, the first item from the listOfReports
        NavigationView {
            ReportDetailView(thisReport: listOfReports.first!)
                .preferredColorScheme(.dark)
        }
    }
}
