//
//  UIButton+Counter.m
//  Addon_ButtonBasketVsDigits
//
//  Created by TeamGear66 on 2/12/17.
//  Copyright © 2017 TeamGear. All rights reserved.
//

#import "UIButton+Counter.h"
#import <objc/runtime.h>

@implementation UIButton (Counter)

#pragma mark -- activeTextField ---
static char UIB_PROPERTY_KEY_number;
@dynamic number;
-(void)setNumber:(NSNumber *)number {
    objc_setAssociatedObject(self, &UIB_PROPERTY_KEY_number, number, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSNumber *)number {
    return (NSNumber *)objc_getAssociatedObject(self, &UIB_PROPERTY_KEY_number);
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    if ([self.number isKindOfClass:[NSNumber class]]) {
        float size = 25.0f;
        NSString *numStr = [self.number stringValue];
        float fontSize = 18 - (numStr.length*2);
        CGRect imageFrame = self.imageView.frame;
        CGRect circleRect = CGRectMake(imageFrame.origin.x+imageFrame.size.width*0.5,
                                       imageFrame.origin.y+imageFrame.size.height*0.5-size,
                                       size,
                                       size);
        UILabel *title = [[UILabel alloc] initWithFrame:circleRect];
        [title setBackgroundColor:[UIColor clearColor]];
        [title setNumberOfLines:0];
        
        [title setTextAlignment:NSTextAlignmentCenter]; //For Center Alignment
        [title setTextColor:[UIColor whiteColor]];
        [title setFont:[UIFont boldSystemFontOfSize:fontSize]];
        title.text = numStr;
        
        // The circle fill black color with white border.
        title.layer.cornerRadius = title.frame.size.height/2;
        title.layer.borderColor=[UIColor whiteColor].CGColor;
        title.layer.borderWidth=2.0f;
        title.layer.backgroundColor = [UIColor blackColor].CGColor;
        [self addSubview:title];
    }
}

- (void) updateCounter:(NSUInteger) counter {
    self.number = [NSNumber numberWithUnsignedInteger:counter];
    [self setNeedsDisplay];
    
}

@end
