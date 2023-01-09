import UIKit

protocol ThemeInterface {
    var primaryColor: UIColor { get }
}

struct WhiteTheme: ThemeInterface {
    var primaryColor: UIColor {
        return .red
    }
}

struct BlackTheme: ThemeInterface {
    var primaryColor: UIColor {
        return .orange
    }
}

struct App {
    private var theme: ThemeInterface
    init(theme: ThemeInterface) {
        self.theme = theme
    }
    
    func applyColor() {
        print("theme.primaryColor \(theme.primaryColor)")
    }
}



