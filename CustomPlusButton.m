//
//  CustomPlusButton.m
//  Customplusbutton
//
//  Created by Souvik on 04/05/15.
//  Copyright (c) 2015 Souvik. All rights reserved.
//

#import "CustomPlusButton.h"

@implementation CustomPlusButton


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 
- (void)drawRect:(CGRect)rect 
 {
    // Drawing code
     CGContextRef context = UIGraphicsGetCurrentContext();
     CGContextSetStrokeColorWithColor(context, [[UIColor blackColor] CGColor]);
     CGContextSetShadowWithColor(context, CGSizeMake(0, 5), 5.0, [[UIColor whiteColor]CGColor]);
     CGContextDrawPath(context, kCGPathFill);

     CGFloat pathwidth = 3.0f;
     UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
     [[UIColor blueColor] setFill];
     [path fill];
     UIBezierPath *pathline = [[UIBezierPath alloc] init];
     pathline.lineWidth=pathwidth;
     [pathline moveToPoint:CGPointMake(2.0f, self.bounds.size.width/2-pathwidth/2)];
     [pathline addLineToPoint:CGPointMake(self.bounds.size.width-4.0f, self.bounds.size.width/2-pathwidth/2)];
     [pathline moveToPoint:CGPointMake(self.bounds.size.width/2-pathwidth/2, 2.0f)];
     [pathline addLineToPoint:CGPointMake(self.bounds.size.width/2-pathwidth/2, self.bounds.size.height-4.0f)];
     [pathline moveToPoint:CGPointMake(2.0f, self.bounds.size.width/2-pathwidth/2)];
     [pathline addLineToPoint:CGPointMake(self.bounds.size.width/2-pathwidth/2, 2.0f)];
     [pathline moveToPoint:CGPointMake(self.bounds.size.width/2-pathwidth/2, self.bounds.size.height-2.0f)];
     [pathline addLineToPoint:CGPointMake(self.bounds.size.width-2, self.bounds.size.height/2-pathwidth/2)];
     [[UIColor whiteColor] setStroke];
     [pathline stroke];
     UIBezierPath *pathCircle = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(self.bounds.size.width/4.0f-10.0f, 20.0f, 8.0f, 8.0f) cornerRadius:4.0f];
     [[UIColor whiteColor] setFill];
     [pathCircle fill];
}


@end
