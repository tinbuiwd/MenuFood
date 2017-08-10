//
//  DataItem.h
//  MenuFood
//
//  Created by Bui Van Tin on 8/10/17.
//  Copyright © 2017 Bui Van Tin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DataItem : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *saleOf;

-(instancetype)initWithName: (NSString*)name
                   andPrice: (NSString*)price
                  withImage: (NSString*)image
            andSaleOffPrice: (NSString*)saleOff;
@end
