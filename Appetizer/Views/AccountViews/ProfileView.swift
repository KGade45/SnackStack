//
//  ProfileView.swift
//  Appetizer
//
//  Created by Kaustubh kailas gade on 24/07/25.
//

import SwiftUI

struct ProfileView: View {

    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Infor")) {
                    TextField("First name", text: $viewModel.user.firstName)
                    TextField("Last name", text: $viewModel.user.lastName)
                    TextField("email", text: $viewModel.user.email)
                        .autocorrectionDisabled(true)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    DatePicker("Birthday", selection: $viewModel.user.birthDay, displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                            .foregroundColor(Color("BrandPrimary"))
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Notifications", isOn: $viewModel.user.notificationEnabled)
                    Toggle("Location", isOn: $viewModel.user.locationPermission)
                }
                .toggleStyle(SwitchToggleStyle(tint: Color("BrandPrimary")))
            }
            .navigationTitle(Text("Account"))
        }
        
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { item in
            Alert(title: Text("\(item.title)"), message: Text("\(item.message)" ), dismissButton: .default(Text("OK")))
        }
    }
}

#Preview {
    ProfileView()
}
