//
//  TKRTestSuite.h
//
//  Created by ToKoRo on 2013-12-19.
//

#import <XCTest/XCTestSuite.h>

@interface TKRTestSuite : XCTestSuite

+ (id)testSuiteForOnlySetting:(NSString *)testOnly;

@end
