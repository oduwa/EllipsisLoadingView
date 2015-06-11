//
//  EllipsesLoadingView.h
//
//  Created by Odie Edo-Osagie on 03/06/2015.
//  Copyright (c) 2015 Odie Edo-Osagie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EllipsesLoadingView : UIView

@property (nonatomic, strong) UIView *leftDot;
@property (nonatomic, strong) UIView *middleDot;
@property (nonatomic, strong) UIView *rightDot;

@property (nonatomic, assign) BOOL isAnimating;
@property (nonatomic, assign) float animationSpeed;
@property (nonatomic, strong) UIColor *highlightedColour;
@property (nonatomic, strong) UIColor *unHighlightedColour;


- (void) startLoadingIndicator;
- (void) stopLoadingIndicator;

@end
