//
//  ViewController.m
//  FingerPaint
//
//  Created by Alp Eren Can on 04/09/15.
//  Copyright © 2015 Alp Eren Can. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIBezierPath *path;
@property (weak, nonatomic) IBOutlet FingerPaintCustomView *fingerPaintView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.path = [UIBezierPath bezierPath];
    self.fingerPaintView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self.fingerPaintView];
    
    [self.path moveToPoint:touchLocation];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self.fingerPaintView];
    
    [self.path addLineToPoint:touchLocation];
    
//    NSLog(@"Touching to the screen");
    
    [self.fingerPaintView setNeedsDisplay];
}

@end
