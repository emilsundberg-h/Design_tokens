
//
// TokensColor.m
//
// Do not edit directly
// Generated on Fri, 23 Apr 2021 07:00:25 GMT
//

#import "TokensColor.h"


@implementation TokensColor

+ (UIColor *)color:(TokensColorName)colorEnum{
  return [[self values] objectAtIndex:colorEnum];
}

+ (NSArray *)values {
  static NSArray* colorArray;
  static dispatch_once_t onceToken;

  dispatch_once(&onceToken, ^{
    colorArray = @[
[UIColor colorWithRed:0.969f green:0.867f blue:0.373f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.118f green:1.000f blue:0.627f alpha:1.000f],
[UIColor colorWithRed:0.467f green:0.553f blue:0.655f alpha:1.000f],
[UIColor colorWithRed:0.624f green:0.349f blue:0.604f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.561f blue:0.576f alpha:1.000f],
[UIColor colorWithRed:0.925f green:0.380f blue:0.624f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.620f blue:0.886f alpha:1.000f],
[UIColor colorWithRed:0.529f green:0.541f blue:0.514f alpha:1.000f],
[UIColor colorWithRed:0.843f green:0.490f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.537f blue:0.792f alpha:1.000f],
[UIColor colorWithRed:0.090f green:0.616f blue:0.302f alpha:1.000f],
[UIColor colorWithRed:0.843f green:0.114f blue:0.141f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.624f blue:0.392f alpha:1.000f],
[UIColor colorWithRed:0.984f green:0.620f blue:0.325f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.333f blue:0.333f alpha:1.000f],
[UIColor colorWithRed:0.808f green:0.200f blue:0.200f alpha:1.000f],
[UIColor colorWithRed:0.816f green:0.455f blue:0.196f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.812f blue:0.224f alpha:1.000f],
[UIColor colorWithRed:0.098f green:0.494f blue:0.314f alpha:1.000f],
[UIColor colorWithRed:0.847f green:0.855f blue:0.863f alpha:1.000f],
[UIColor colorWithRed:0.753f green:0.761f blue:0.776f alpha:1.000f],
[UIColor colorWithRed:0.945f green:0.949f blue:0.953f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.071f green:0.082f blue:0.102f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.000f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.125f green:0.145f blue:0.173f alpha:1.000f],
[UIColor colorWithRed:0.298f green:0.318f blue:0.341f alpha:1.000f],
[UIColor colorWithRed:0.451f green:0.467f blue:0.490f alpha:1.000f],
[UIColor colorWithRed:0.039f green:0.278f blue:0.761f alpha:1.000f],
[UIColor colorWithRed:0.157f green:0.439f blue:0.941f alpha:1.000f],
[UIColor colorWithRed:0.478f green:0.706f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.686f green:0.875f blue:0.976f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.973f blue:0.988f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
