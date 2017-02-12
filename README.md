# iOS-button-basket-vs-numbers
Objective-C: UIButton has image basket  with counter in circle.

This example help you to show counter in basket. You can use it simply. 
![gif](https://raw.githubusercontent.com/energy6x6/iOS-button-basket-vs-numbers/master/basket.gif)

You can use one of variants:
Example 1: 
1. BasketButton inherit from UIButton
2. Use Custom Class BasketButton in storyboard in UIButton-view
3. Include this in your code:
```
@property (nonatomic, weak) IBOutlet BasketButton *basket1;

- (IBAction) basketButtonClick1:(id)sender {
    self.calc1++;
    [self.basket1 updateCounter:self.calc1];
}
```
Example 2:
1. You have to import extension
2. Include this in your code:

```
#import "UIButton+Counter.h"

@property (nonatomic, weak) IBOutlet UIButton *basket2;

- (IBAction) basketButtonClick2:(id)sender {
    self.calc2++;
    [self.basket2 updateCounter:self.calc2];
}

```
