//
//  YPCameraView.swift
//  YPImgePicker
//
//  Created by Sacha Durand Saint Omer on 2015/11/14.
//  Copyright © 2015 Yummypets. All rights reserved.
//

import UIKit
import Stevia

class YPCameraView: UIView, UIGestureRecognizerDelegate {
    
    let focusView = UIView(frame: CGRect(x: 0, y: 0, width: 90, height: 90))
    let previewViewContainer = UIView()
    let flipButton = UIButton()
    let shotButton = UIButton()
    let flashButton = UIButton()
    let timeElapsedLabel = UILabel()
    let progressBar = UIProgressView()

    convenience init(overlayView: UIView? = nil) {
        self.init(frame: .zero)
        
        if let overlayView = overlayView {
            // View Hierarchy
            sv(
                previewViewContainer,
                overlayView,
                progressBar,
                timeElapsedLabel,
                flashButton,
                flipButton,
                shotButton
            )
        } else {
            // View Hierarchy
            sv(
                previewViewContainer,
                progressBar,
                timeElapsedLabel,
                flashButton,
                flipButton,
                shotButton
            )
        }
        
        // Layout
        let isIphone4 = UIScreen.main.bounds.height == 480
        let sideMargin: CGFloat = isIphone4 ? 20 : 0
        layout(
            0,
            |-sideMargin-previewViewContainer-sideMargin-|,
            -2,
            |progressBar|,
            0
        )
//        previewViewContainer.heightEqualsWidth()
        (previewViewContainer.Top == 0).priority = UILayoutPriority(999)
        (previewViewContainer.Bottom == 0).priority = UILayoutPriority(999)

        overlayView?.followEdges(previewViewContainer)

        |-(15+sideMargin)-flashButton.size(42)
        flashButton.Bottom == previewViewContainer.Bottom - 15

        flipButton.size(42)-(15+sideMargin)-|
        flipButton.Bottom == previewViewContainer.Bottom - 15
        
        timeElapsedLabel-(15+sideMargin)-|
        timeElapsedLabel.Top == previewViewContainer.Top + 15

        shotButton.size(56).centerHorizontally()
        shotButton.Bottom == previewViewContainer.Bottom - 15

        // Style
        backgroundColor = YPConfig.colors.photoVideoScreenBackgroundColor
        previewViewContainer.backgroundColor = .black
        timeElapsedLabel.style { l in
            l.textColor = .white
            l.text = "00:00"
            l.isHidden = true
            l.font = .monospacedDigitSystemFont(ofSize: 13, weight: UIFont.Weight.medium)
        }
        progressBar.style { p in
            p.trackTintColor = .clear
            p.tintColor = .red
        }
        flashButton.setImage(YPConfig.icons.flashOffIcon, for: .normal)
        flipButton.setImage(YPConfig.icons.loopIcon, for: .normal)
        shotButton.setImage(YPConfig.icons.capturePhotoImage, for: .normal)
    }
}
