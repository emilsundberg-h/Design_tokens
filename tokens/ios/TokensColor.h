
//
// TokensColor.h
//
// Do not edit directly
// Generated on Fri, 23 Apr 2021 07:00:25 GMT
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, TokensColorName) {
ColorHighlightDark,
ColorBusLight,
ColorBusDark,
ColorTramLidingobanan,
ColorTramNockebybanan,
ColorTramRoslagsbanan,
ColorTramSaltsjobanan,
ColorRailPendeltag,
ColorBoat,
ColorTramSparvagcity,
ColorTramTvarbanan,
ColorMetroBlue,
ColorMetroGreen,
ColorMetroRed,
ColorSuccessDark,
ColorWarningDark,
ColorErrorDark,
ColorErrorLight,
ColorWarningLight,
ColorHighlightLight,
ColorSuccessLight,
ColorNeutral300,
ColorNeutral400,
ColorNeutral200,
ColorNeutral100,
ColorNeutral800,
ColorNeutral900,
ColorNeutral700,
ColorNeutral600,
ColorNeutral500,
ColorPrimary500,
ColorPrimary400,
ColorPrimary300,
ColorPrimary200,
ColorPrimary100
};

@interface TokensColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(TokensColorName)color;
@end
