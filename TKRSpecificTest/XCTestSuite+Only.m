//
//  XCTestSuite+Only.m
//
//  Created by ToKoRo on 2013-12-19.
//

#import "XCTestSuite+Only.h"
#import "TKRTestSuite.h"

@implementation XCTestSuite (Only)

//----------------------------------------------------------------------------//
#pragma mark - XCTestSuite
//----------------------------------------------------------------------------//
    
#ifdef TEST_ONLY

+ (id)defaultTestSuite
{
    NSString *testOnly = @TEST_ONLY;
    return [TKRTestSuite testSuiteForOnlySetting:testOnly];
}

#endif

@end
