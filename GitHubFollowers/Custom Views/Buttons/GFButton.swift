//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by Sampson Ezieme on 2/9/24.
//

import UIKit

class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(color: UIColor, title: String, systemImageName: UIImage) {
        self.init(frame: .zero)
        set(color: color, title: title, systemImageName: systemImageName)
    }
    
    
    private func configure() {
        
        configuration               = .tinted()
        configuration?.cornerStyle  = .medium
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    final func set(color: UIColor, title: String, systemImageName: UIImage) {
        configuration?.baseBackgroundColor  = color
        configuration?.baseForegroundColor  = color
        configuration?.title                = title
        
        configuration?.image = systemImageName
        configuration?.imagePadding = 6
        configuration?.imagePlacement = .leading
        
    }
}


#Preview {
    GFButton(color: .blue, title: "Test Button", systemImageName: SFSymbols.checkmark!)
}
