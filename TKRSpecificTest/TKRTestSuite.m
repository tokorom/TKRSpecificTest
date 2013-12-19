//
//  TKRTestSuite.m
//
//  Created by ToKoRo on 2013-12-19.
//

#import "TKRTestSuite.h"

@interface TKRTestSuite ()
@property (strong) NSArray *testClasses;
@end 

@implementation TKRTestSuite

//----------------------------------------------------------------------------//
#pragma mark - Public Interface
//----------------------------------------------------------------------------//

+ (id)testSuiteForOnlySetting:(NSString *)testOnly
{
    XCTestSuite *suite;

    NSArray *classAndTest = [testOnly componentsSeparatedByString:@"/"];
    NSString *className = classAndTest[0];
    if (2 > classAndTest.count) {
        suite = [self.class testSuiteForClassName:className];
    } else {
        NSString *methodName = nil;
        methodName = classAndTest[1];
        suite = [self.class testSuiteForClassName:className methodName:methodName];
    }

    if (!suite) {
        NSLog(@"%s: TEST_ONLY %@ is invalid.", __PRETTY_FUNCTION__, testOnly);
    }
    return suite;
}

//----------------------------------------------------------------------------//
#pragma mark - Private Methods
//----------------------------------------------------------------------------//

+ (XCTestSuite*)testSuiteForClassName:(NSString *)className
{
    Class testClass = NSClassFromString(className);
    return [XCTestSuite testSuiteForTestCaseClass:testClass];
}

+ (XCTestSuite*)testSuiteForClassName:(NSString *)className methodName:(NSString *)methodName
{
    Class testClass = NSClassFromString(className);
    SEL selector = NSSelectorFromString(methodName);
    XCTestSuite *suite = [XCTestSuite testSuiteWithName:className];
    [suite addTest:[testClass testCaseWithSelector:selector]];
    return suite;
}

@end
