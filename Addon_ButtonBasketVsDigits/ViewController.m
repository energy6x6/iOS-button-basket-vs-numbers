//
//  ViewController.m
//  Addon_ButtonBasketVsDigits
//
//  Created by TeamGear66 on 2/11/17.
//  Copyright © 2017 TeamGear. All rights reserved.
//

#import "ViewController.h"
#import "BasketButton.h"
#import "UIButton+Counter.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet BasketButton *basket1;
@property (nonatomic, weak) IBOutlet UIButton *basket2;
@property (nonatomic, assign) int calc1, calc2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction) basketButtonClick1:(id)sender {
    self.calc1++;
    [self.basket1 updateCounter:self.calc1];
}

- (IBAction) basketButtonClick2:(id)sender {
    self.calc2++;
    [self.basket2 updateCounter:self.calc2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
}


@end
