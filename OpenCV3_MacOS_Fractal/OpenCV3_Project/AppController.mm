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
}

- (IBAction) openImage: (id) sender {
    cv::Mat img(640,480, CV_8UC3);
    paramA = -([slide1 integerValue] * 0.01);
    paramB = [slide2 integerValue] * 0.01;
    radius = [slide3 integerValue];
    frac::DrawFractal(img);
    cv::imshow("image", img);
    }

@end
