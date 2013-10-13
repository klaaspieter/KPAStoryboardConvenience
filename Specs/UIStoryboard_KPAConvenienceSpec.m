#import "SpecHelper.h"

#import "UIStoryboard+KPAConvenience.h"
#import "TestViewController.h"

SpecBegin(UIStoryboard_KPAConvenience)

describe(@"UIstoryboard+KPAConvience", ^{
    it(@"can set the main storyboard", ^{
        [UIStoryboard setMainStoryboardName:@"Main" bundle:[NSBundle bundleForClass:self.class]];
        expect([UIStoryboard mainStoryboard]).toNot.beNil();
    });

    it(@"knows storyboard identifiers for a class", ^{
        NSString *identifier = [UIStoryboard storyboardIdentifierForClass:[TestViewController class]];
        expect(identifier).to.equal(@"TestViewController");
    });
});

SpecEnd
