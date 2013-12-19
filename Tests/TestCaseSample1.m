//
//  TestCaseSample1.m
//
//  Created by ToKoRo on 2013-12-18.
//

#import <XCTest/XCTest.h>

@interface TestCaseSample1 : XCTestCase
@end 

@implementation TestCaseSample1

- (void)testExample1
{
    XCTAssertNil(nil, @"");
}

- (void)testExample2
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
