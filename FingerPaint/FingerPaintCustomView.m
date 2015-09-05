//
//  FingerPaintCustomView.m
//  FingerPaint
//
//  Created by Alp Eren Can on 04/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "FingerPaintCustomView.h"

@interface FingerPaintCustomView ()

@end

@implementation FingerPaintCustomView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath* drawing = [self.delegate path];
    
    [drawing setLineWidth:5.0];
    
    [[UIColor blueColor] setStroke];
    
    [drawing stroke];
    
 
}


@end
