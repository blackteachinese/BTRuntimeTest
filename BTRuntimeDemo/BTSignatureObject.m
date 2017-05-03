//
//  BTSignatureObject.m
//  BTRuntimeDemo
//
//  Created by Blacktea on 2017/5/3.
//  Copyright © 2017年 Blacktea. All rights reserved.
//

#import "BTSignatureObject.h"

@implementation BTSignatureObject

- (void)testFirst {
    NSLog(@"testFirst");
}

+ (void)testSecond {
    NSLog(@"testSecond");
}


- (id)testThird {
    NSLog(@"testThird");
    return @"testThird";
}

+ (id)testForth {
    NSLog(@"testForth");
    return @"testForth";
}

+ (id)testFifth:(NSString *)arg1 lists:(NSArray *)lists {
    NSLog(@"testFifth: arg1 = %@, lists = %@", arg1, lists);
    return [NSObject new];
}
@end
