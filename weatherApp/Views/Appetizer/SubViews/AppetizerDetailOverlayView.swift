import SwiftUI

struct AppetizerDetailOverlayView: View {
    let appetizer: AppetizerUIModal
    let onDismiss: () -> Void

    var body: some View {
            VStack(spacing: 16) {
                    AsyncImage(url: URL(string: appetizer.imageURL)) { phase in
                        switch phase {
                        case .empty:
                            Image("food-placeholder")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        case .success(let image):
                                image
                               
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        case .failure:
                            Image(systemName: "photo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.secondary)
                                .padding(32)
                        @unknown default:
                            EmptyView()
                        }
                    }
                    .frame(width: 320, height: 225)
                    .background(Color(.systemGray6))
                    .clipped()
//                    .cornerRadius(12)

                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(appetizer.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 8)

                HStack(spacing: 24) {
                    AppetizerInfoItem(title: "Calories", value: "\(appetizer.calories)")
                    AppetizerInfoItem(title: "Carbs", value: "\(appetizer.carbs) g")
                    AppetizerInfoItem(title: "Protein", value: "\(appetizer.protein) g")
                }


                
                Button(action: {
                    print("tapped")
                }, label: {
                    Text("$\(appetizer.price, specifier: "%.2f")")
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(width: 260,height: 50)
                        .foregroundColor(.white)
                        .background(Color("tabPromaryColors"))
                    
                })
               .padding(.bottom, 20)
            }
            .frame(width: 320)
            .background(Color(.systemBackground))
            .cornerRadius(20)
            .shadow(radius: 20)
            
            .overlay(alignment: .topTrailing) {
                Button(action: onDismiss) {
                    ZStack{
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .opacity(0.6)
                        
                        Image(systemName: "xmark")
                            .imageScale(.small)
                            .frame(width:44, height: 44)
                            .foregroundColor(.secondary)
                            .padding(12)
                    }
                }
          }
    }
}

private struct AppetizerInfoItem: View {
    let title: String
    let value: String

    var body: some View {
        VStack(spacing: 4) {
            Text(title)
                .font(.caption)
                .foregroundColor(.secondary)

            Text(value)
                .font(.headline)
        }
    }
}

#Preview {
    AppetizerDetailOverlayView(
        appetizer: AppetizerUIModal(
            name: "Test Appetizer",
            description: "This is the description for my appetizer. It's yummy.",
            price: 9.99,
            imageURL: "",
            calories: 99,
            protein: 99,
            carbs: 99
        ),
        onDismiss: {}
    )
}
