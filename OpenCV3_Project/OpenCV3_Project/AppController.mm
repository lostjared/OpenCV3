//
//  AppController.m
//  OpenCV3_Project
//
//  Created by Jared Bruni on 1/12/17.
//  Copyright © 2017 Jared Bruni. All rights reserved.
//

#include"AppController.h"
#import <Foundation/Foundation.h>

@implementation AppController

- (IBAction) openImage: (id) sender {
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    if([panel runModal]) {
        NSString *str = [[panel URL] path];
        cv::namedWindow("image", 1);
        cv::Mat img = cv::imread([str UTF8String]);
        cv::imshow("image", img);
    }
}

@end
