//
//  main.m
//  RandomItems
//
//  Created by Mike Brantley on 5/11/14.
//  Copyright (c) 2014 pifster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        /* // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the items array ...
        for (NSString *item in items) {
            // Log the description of item
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] init];
    
        // This creates an NSString, "Red Sofa" and  gives it to the BNRItem
        //[item setItemName:@"Red Sofa"];  // Explicit accessor messages
        item.itemName=@"Red Sofa"; // Dot Notation rather than explicit
        
        // This creates an NSString, "A1B2C" and gives it to the BNRItem
        //[item setSerialNumber:@"A1B2C"];  // Explicit accessor messages
        item.serialNumber=@"A1B2C"; // Dot Notation rather than explicit
    
        // This sends the value 100 to be used as the valueInDollars of this BNRItem
        //[item setValueInDollars:100];  // Explicit accessor messages
        item.valueInDollars=100; // Dot Notation rather than explicit */
    

        //NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]); // Explicit
        //NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
        
        /* BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                           valueInDollars:100
                                             serialNumber:@"A1B2C"];
        
        // The %@ token is replaced with the result of sending
        // the description message to the corresponding argument
        NSLog(@"%@", item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        NSLog(@"%@", itemWithNoName); */ // OLD CODE
        
        //for (int i; i < 10; i++) {
        //    BNRItem *item = [BNRItem randomItem];
        //    [items addObject:item];
        //}
        
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        // Destory the mutable array object
        NSLog(@"Setting items to nil");
        items = nil;
        
    }
    return 0;
}

