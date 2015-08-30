//
//  SLViewController.m
//  SLBaiduPod
//
//  Created by LiuShulong on 08/30/2015.
//  Copyright (c) 2015 LiuShulong. All rights reserved.
//

#import "SLViewController.h"
#import <SLBaiduPod/BMapKit.h>
#import <SLBaiduPod/TestViewController.h>
#import <SLBaiduPod/Factory.h>

@interface SLViewController ()<BMKMapViewDelegate>

@property (nonatomic,strong)BMKMapView *mapView;

@end

@implementation SLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.mapView = [Factory mapView];
    self.mapView.frame = self.view.bounds;
    [self.view addSubview:self.mapView];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [_mapView viewWillAppear];
    _mapView.delegate = self; // 此处记得不用的时候需要置nil，否则影响内存的释放
}
- (void)viewWillDisappear:(BOOL)animated
{
    [_mapView viewWillDisappear];
    _mapView.delegate = nil; // 不用时，置nil
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
        
}


@end
