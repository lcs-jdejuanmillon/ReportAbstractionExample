//
//  ReportsListView.swift
//  ReportAbstractionExample
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct ReportsListView: View {
    var body: some View {
        List {
            // Replacing the concrete lsit of names with an abstraction
            // The abstraction is using a ForEach structure iterate ove the list from the model
            // This (when the app is run) builds the list of names
            //"listOfReports" is the input list
            // The ForEach, with each loop or iteration, places a new item from the list into "currentReport"
            ForEach(listOfReports) { currentReport in
                NavigationLink(destination: {
                    ReportDetailView(thisReport: currentReport)
                }, label: {
                    Text(currentReport.name)
                })
            }
        }
        .navigationTitle("Reports")
        
    }

}

struct ReportsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ReportsListView()
                .preferredColorScheme(.dark)
        }
    }
}
