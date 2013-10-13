#import "SpecHelper.h"

#import "UIStoryboard+KPAConvenience.h"

SpecBegin(UIStoryboard_KPAConvenience)

describe(@"UIstoryboard+KPAConvience", ^{
    it(@"can set the main storyboard", ^{
        [UIStoryboard setMainStoryboardName:@"Main" bundle:[NSBundle bundleForClass:self.class]];
        expect([UIStoryboard mainStoryboard]).toNot.beNil();
    });
});

SpecEnd
