//
//  EllipsesLoadingView.m
//
//  Created by Odie Edo-Osagie on 03/06/2015.
//  Copyright (c) 2015 Odie Edo-Osagie. All rights reserved.
//

#import "EllipsesLoadingView.h"

@implementation EllipsesLoadingView

- (id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self){
        float width = frame.size.width;
        float height = frame.size.height;
        _animationSpeed = 1.0;
        _unHighlightedColour = [UIColor lightGrayColor];
        _highlightedColour = [UIColor darkGrayColor];
        
        _leftDot = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width/4.5, width/4.5)];
        _leftDot.backgroundColor = _unHighlightedColour;
        _leftDot.layer.cornerRadius = _leftDot.frame.size.width/2.0;
        
        _middleDot = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width/4.5, width/4.5)];
        _middleDot.backgroundColor = _unHighlightedColour;
        _middleDot.layer.cornerRadius = _middleDot.frame.size.width/2.0;
        
        _rightDot = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width/4.5, width/4.5)];
        _rightDot.backgroundColor = _unHighlightedColour;
        _rightDot.layer.cornerRadius = _rightDot.frame.size.width/2.0;
        
        _middleDot.center = self.center;
        _leftDot.center = CGPointMake(_middleDot.center.x-(_leftDot.frame.size.width*1.5), height/2);
        _rightDot.center = CGPointMake(_middleDot.center.x+(_rightDot .frame.size.width*1.5), height/2);
        
        [self addSubview:_leftDot];
        [self addSubview:_rightDot];
        [self addSubview:_middleDot];
    }
    
    return self;
}

- (void) setHighlightedColour:(UIColor *)highlightedColour
{
    _highlightedColour = highlightedColour;
    
    if(_isAnimating){
        [self stopLoadingIndicator];
        [self startLoadingIndicator];
    }
}

- (void) setUnHighlightedColour:(UIColor *)unHighlightedColour
{
    _unHighlightedColour = unHighlightedColour;
    
    if(_isAnimating){
        [self stopLoadingIndicator];
        [self startLoadingIndicator];
    }
}

- (void) startLoadingIndicator
{
    float duration = 0;
    if(_animationSpeed != 0){
        duration = (1/_animationSpeed)+1.5;
    }
    else{
        duration = 10;
    }
    
    [UIView animateKeyframesWithDuration:duration delay:0.0 options:UIViewKeyframeAnimationOptionRepeat animations:^{
        [UIView addKeyframeWithRelativeStartTime:0.0 relativeDuration:0.1667 animations:^{
            [_leftDot setTransform:CGAffineTransformMakeScale(1.5, 1.5)];
            _leftDot.backgroundColor = _highlightedColour;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.1667 relativeDuration:0.1667 animations:^{
            [_leftDot setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
            _leftDot.backgroundColor = _unHighlightedColour;
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.3333 relativeDuration:0.1667 animations:^{
            [_middleDot setTransform:CGAffineTransformMakeScale(1.5, 1.5)];
            _middleDot.backgroundColor = _highlightedColour;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.5 relativeDuration:0.1667 animations:^{
            [_middleDot setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
            _middleDot.backgroundColor = _unHighlightedColour;
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.6667 relativeDuration:0.1667 animations:^{
            [_rightDot setTransform:CGAffineTransformMakeScale(1.5, 1.5)];
            _rightDot.backgroundColor = _highlightedColour;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.8333 relativeDuration:0.1667 animations:^{
            [_rightDot setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
            _rightDot.backgroundColor = _unHighlightedColour;
        }];
    } completion:nil];
    
    _isAnimating = YES;
}

- (void) stopLoadingIndicator
{
    [_leftDot.layer removeAllAnimations];
    [_middleDot.layer removeAllAnimations];
    [_rightDot.layer removeAllAnimations];
    
    _isAnimating = NO;
}



@end
