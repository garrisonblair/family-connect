import SwiftUI

struct RatingView: View {
    let rating: Double
    var threshold: Double = 0.8
    
    init(rating: Double) {
        self.rating = rating
    }
    
    init(rating: Double, threshold: Double) {
        self.rating = rating
        self.threshold = (0...1).contains(threshold) ? threshold : 0.8
    }
    
    var body: some View {
        HStack {
            Image(systemName: rating > threshold ? "heart.fill" : "heart")
            Image(systemName: rating > 1 + threshold ? "heart.fill" : "heart")
            Image(systemName: rating > 2 + threshold ? "heart.fill" : "heart")
            Image(systemName: rating > 3 + threshold ? "heart.fill" : "heart")
            Image(systemName: rating > 4 + threshold ? "heart.fill" : "heart")
        }
        .padding(.vertical)
        .foregroundColor(Color("appOrange"))
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 3.4, threshold: 0.4)
    }
}
