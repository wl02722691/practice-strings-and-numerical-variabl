//
//  ViewController.m
//  strings-and-numerical-variabl
//
//  Created by 張書涵 on 2018/12/25.
//  Copyright © 2018 張書涵. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *productTitle = @"Bouncey Balls";
    NSString *manufacturer = @"Acme Novelty";

   // NSString *longHand = [NSString stringWithUTF8String:"Bouncey Balls"];
    
   // char greeting[] = "howdy, Folks!";
    
    int quantity = 144;
    
    float price = 19.9;
    
    double unitPrice = quantity/price;
    
    NSNumber *unitPriceObject = [NSNumber numberWithDouble: unitPrice];
    
    //NSArray *priceArray = @[unitPrice]
    //不能將非 NSobject 放入 NSArray
    
    NSArray *priceArray = @[unitPriceObject];
    
    NSArray *priceArray2 = @[@(unitPrice)];
    //有上面兩種寫法
    
    
    //double test = unitPriceObject + 5;
    //Arithmetic on pointer to interface 'NSNumber', which is not a constant size for this architecture and platform
    //NSNumber 不能計算
    
    double test = [unitPriceObject doubleValue] + 5;
    
    NSString *blurb = [NSString stringWithFormat:@"You have selece %@, made by %@. %@ come in a quantity of %i, dor a price of %f and a unit price of %f.", productTitle, manufacturer, productTitle, quantity, price, unitPrice];

    //String用%@, int @i, float and double用%f
    
    NSLog(blurb);
    //print
    
    
}


@end
