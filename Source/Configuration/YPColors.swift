//
//  YPColors.swift
//  YPImagePicker
//
//  Created by Nik Kov || nik-kov.com on 13.04.2018.
//  Copyright © 2018 Yummypets. All rights reserved.
//

import UIKit

public struct YPColors {
    
   // MARK: - Common

    /// The common tint color which is used for done buttons in navigation bar, multiple items selection and so on.
//    public var tintColor = UIColor(r: 10, g: 120, b: 254)
    public var tintColor = UIColor(r: 251, g: 134, b: 36)
        
    /// A color for navigation bar spinner.
    /// Default is nil, which is default iOS gray UIActivityIndicator.
    public var navigationBarActivityIndicatorColor: UIColor?
    
    /// A color for circle for selected items in multiple selection
    /// Default is nil, which takes tintColor.
    public var multipleItemsSelectedCircleColor: UIColor?
    
    /// The background color of the bottom of photo and video screens.
    public var photoVideoScreenBackgroundColor: UIColor = .white

    /// The background color of the library and space between collection view cells.
    public var libraryScreenBackgroundColor: UIColor = .white

    /// The background color of safe area. For example under the menu items.
    public var safeAreaBackgroundColor: UIColor = .white

    /// A color for background of the asset container. You can see it when bouncing the image.
    public var assetViewBackgroundColor: UIColor = .white

    /// A color for background in filters.
    public var filterBackgroundColor: UIColor = .white

    /// A color for bottom buttons (photo, video, all photos).
    public var bottomMenuItemBackgroundColor: UIColor = .clear

    /// A color for for bottom buttons selected text.
    public var bottomMenuItemSelectedTextColor: UIColor = UIColor(r: 38, g: 38, b: 38)
    
    /// A color for for bottom buttons not selected text.
    public var bottomMenuItemUnselectedTextColor: UIColor = UIColor(r: 153, g: 153, b: 153)

    // MARK: - Trimmer
    
    /// The color of the main border of the view
    public var trimmerMainColor: UIColor = UIColor.black
    /// The color of the handles on the side of the view
    public var trimmerHandleColor: UIColor = UIColor.white
    /// The color of the position indicator
    public var positionLineColor: UIColor = UIColor.white
    
   // MARK: - Cover selector
    
    /// The color of the cover selector border
    public var coverSelectorBorderColor: UIColor = UIColor.white
    
    // MARK: - Progress bar
    
    /// The color for the progress bar when processing video or images. The all track color.
    public var progressBarTrackColor: UIColor = UIColor.white
    /// The color of completed track for the progress bar
    public var progressBarCompletedColor: UIColor?
}
