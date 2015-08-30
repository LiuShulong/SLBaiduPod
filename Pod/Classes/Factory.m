//
//  Factory.m
//  Pods
//
//  Created by LiuShulong on 8/30/15.
//
//

#import "Factory.h"

@implementation Factory

+ (BMKMapView *)mapView {
    
    NSString * bundlePath = [[ NSBundle mainBundle] pathForResource: @"mapapi" ofType :@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithPath:bundlePath];
    NSLog(@"%@",resourceBundle);

    return [[BMKMapView alloc] init];
}

@end
