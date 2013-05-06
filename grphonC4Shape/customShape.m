//
//  customShape.m
//  grphonC4Shape
//
//  Created by Bardia Doust on 13-05-04.
//  Copyright (c) 2013 Bardia Doust. All rights reserved.
//

#import "customShape.h"

@implementation customShape



- (id)initWithColor:(UIColor *)fillColor origin:(CGPoint)point{
    self = [super init];
    if (self){

        CGRect frame = CGRectMake(0, 0, 100, 100);
        [self rect:frame];
        self.lineWidth = 0.0f;
        self.fillColor = fillColor;
        self.origin = point;
        [self addGesture:TAP name:@"tap" action:@"tapped"];
       //This is still broken [self addGesture:LONGPRESS name:@"longpress" action:@"longPress"];
    }
    return self;
}








-(void)changeColorTo:(UIColor *)newColor{
    
    self.fillColor = newColor;
}

-(void)tapped {
    [self postNotification:@"tapNotification"];
}


-(void)longPress{
    [self postNotification:@"longPressNotification"];
}









/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
