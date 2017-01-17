//
//  AppController.m
//  OpenCV3_Project
//
//  Created by Jared Bruni on 1/12/17.
//  Copyright © 2017 Jared Bruni. All rights reserved.
//

#include"AppController.h"
#import <Foundation/Foundation.h>
#include"fractal.h"

using namespace frac;

@implementation AppController

- (void) awakeFromNib {
    cv::namedWindow("image", 1);
    [window setLevel: NSStatusWindowLevel];
}

- (IBAction) openImage: (id) sender {
    cv::Mat img(600,800, CV_8UC3);
    paramA = [slide1 integerValue] * 0.01;
    paramB = [slide2 integerValue] * 0.01;
    if([chk1 state] == NSOnState)
        paramA = -paramA;

    if([chk2 state] == NSOnState)
        paramB = -paramB;
    
    
    [field_cnt setFloatValue: paramA];
    [iter_nt setFloatValue: paramB];
    
    radius = [slide3 integerValue];
    zoom = atof([[field stringValue] UTF8String]);
    max_iter = atoi([[iter stringValue] UTF8String]);
    
    red_color = [rf floatValue];
    green_color = [gf floatValue];
    blue_color = [bf floatValue];
    
    frac::DrawFractal(img);
    cv::imshow("image", img);
}

@end
