//
//  BasketButton.h
//  Addon_ButtonBasketVsDigits
//
//  Created by TeamGear66 on 2/11/17.
//  Copyright © 2017 TeamGear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasketButton : UIButton

@property (nonatomic, strong) NSNumber *number;
- (void) updateCounter:(NSUInteger) counter;

@end
