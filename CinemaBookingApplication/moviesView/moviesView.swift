//
//  MovieView.swift
//  CinemaBookingSystem
//
//  Created by Liuyu on 2022/5/22.
//

import Foundation
import UIKit

class moviesView: UIView {

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    var movieID: Int?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed("Empty", owner: self, options: nil)
        addSubview(containerView)
        imageView.layer.cornerRadius = 25
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "moviesView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }

}
