//
//  DataItem.m
//  MenuFood
//
//  Created by Bui Van Tin on 8/10/17.
//  Copyright © 2017 Bui Van Tin. All rights reserved.
//

#import "DataItem.h"

@implementation DataItem
-(instancetype)initWithName: (NSString*)name
                   andPrice: (NSString*)price
                  withImage: (NSString*)image
            andSaleOffPrice: (NSString*)saleOff
{
    if(self = [super init]){
        self.name = name;
        self.price = price;
        self.image = [UIImage imageNamed:image];
        self.saleOf = saleOff;
    }
    return self;
}

@end
