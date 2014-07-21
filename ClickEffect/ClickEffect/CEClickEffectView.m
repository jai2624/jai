//
//  CEClickEffectView.m
//  ClickEffect
//
//  Created by Jayakumar Marannan on 19-7-14.
//  Copyright (c) 2014年 jai. All rights reserved.
//

#import "CEClickEffectView.h"
#import <QuartzCore/QuartzCore.h>

@implementation CEClickEffectView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
          }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    }

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint touchPoint=[[touches anyObject]locationInView:self];
    CALayer *waveLayer=[CALayer layer];
    waveLayer.frame = CGRectMake(touchPoint.x-1, touchPoint.y-1, 10, 10);
    int colorInt=arc4random()%7;
    switch (colorInt) {
        case 0:
            waveLayer.borderColor =[UIColor redColor].CGColor;
            break;
        case 1:
            waveLayer.borderColor =[UIColor grayColor].CGColor;
            break;
        case 2:
            waveLayer.borderColor =[UIColor purpleColor].CGColor;
            break;
        case 3:
            waveLayer.borderColor =[UIColor orangeColor].CGColor;
            break;
        case 4:
            waveLayer.borderColor =[UIColor yellowColor].CGColor;
            break;
        case 5:
            waveLayer.borderColor =[UIColor greenColor].CGColor;
            break;
        case 6:
            waveLayer.borderColor =[UIColor blueColor].CGColor;
            break;
        default:
            waveLayer.borderColor =[UIColor blackColor].CGColor;
            break;
    }
    waveLayer.borderWidth =0.5;
    waveLayer.cornerRadius =5.0;
    
    [self.layer addSublayer:waveLayer];
    [self scaleBegin:waveLayer];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint touchPoint=[[touches anyObject]locationInView:self];
    CALayer *waveLayer=[CALayer layer];
    waveLayer.frame = CGRectMake(touchPoint.x-1, touchPoint.y-1, 10, 10);
    int colorInt=arc4random()%7;
    switch (colorInt) {
        case 0:
            waveLayer.borderColor =[UIColor redColor].CGColor;
            break;
        case 1:
            waveLayer.borderColor =[UIColor grayColor].CGColor;
            break;
        case 2:
            waveLayer.borderColor =[UIColor purpleColor].CGColor;
            break;
        case 3:
            waveLayer.borderColor =[UIColor orangeColor].CGColor;
            break;
        case 4:
            waveLayer.borderColor =[UIColor yellowColor].CGColor;
            break;
        case 5:
            waveLayer.borderColor =[UIColor greenColor].CGColor;
            break;
        case 6:
            waveLayer.borderColor =[UIColor blueColor].CGColor;
            break;
        default:
            waveLayer.borderColor =[UIColor blackColor].CGColor;
            break;
    }
    
    
    waveLayer.borderWidth =0.5;
    waveLayer.cornerRadius =5.0;
    
    [self.layer addSublayer:waveLayer];
    [self scaleBegin:waveLayer];
}

-(void)scaleBegin:(CALayer *)aLayer
{
    const float maxScale=120.0;
    if (aLayer.transform.m11<maxScale) {
        if (aLayer.transform.m11==1.0) {
            [aLayer setTransform:CATransform3DMakeScale( 1.1, 1.1, 1.0)];
            
        }else{
            [aLayer setTransform:CATransform3DScale(aLayer.transform, 1.1, 1.1, 1.0)];
        }
            [self performSelector:_cmd withObject:aLayer afterDelay:0.05];
    }else [aLayer removeFromSuperlayer];
}

@end
