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
    
    NSString *imageName = [NSString stringWithFormat:@"%@/%@", @"mapapi.bundle", @"polar-bear.jpg"];
    NSURL *imageUrl = [[NSBundle mainBundle] URLForResource:imageName withExtension:nil];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:imageUrl]];
    
    
    NSString * bundlePath = [[ NSBundle mainBundle] pathForResource: @"mapapi" ofType :@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithPath:bundlePath];
    NSLog(@"%@",resourceBundle);
    
    NSLog(@"%@",[NSBundle mainBundle]);

    return [[BMKMapView alloc] init];
}

@end
