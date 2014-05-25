//
//  BNRItem.h
//  RandomItems
//
//  Created by Mike Brantley on 5/11/14.
//  Copyright (c) 2014 pifster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

+ (instancetype)randomItem;

// Two additional initialization methods other than the init method that is inherited from the NSObject class, or initializers
// Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

@end
