//
//  FingerPaintCustomView.h
//  FingerPaint
//
//  Created by Alp Eren Can on 04/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FingerPaintCustomViewDelegate <NSObject>

-(NSArray *)points;

@end

@interface FingerPaintCustomView : UIView

@property (strong, nonatomic) id <FingerPaintCustomViewDelegate> delegate;

@end
