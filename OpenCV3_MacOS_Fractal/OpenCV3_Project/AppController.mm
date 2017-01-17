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
    frame = cv::Mat(720, 1280, CV_8UC3);
    [self openImage: self];
}

- (IBAction) openImage: (id) sender {
    paramA = [slide1 integerValue] * 0.01;
    paramB = [slide2 integerValue] * 0.01;
 
    if([chk1 state] == NSOnState)
        paramA = -paramA;

    if([chk2 state] == NSOnState)
        paramB = -paramB;
    
    [field_cnt setFloatValue: paramA];
    [iter_nt setFloatValue: paramB];
    zoom_x = [field floatValue];
    zoom_y = [field_zoom_y floatValue];
    zoom_w = [field_zoom_w floatValue];
    zoom_h = [field_zoom_h floatValue];
    max_iter = [iter integerValue];
    red_color = [rf floatValue];
    green_color = [gf floatValue];
    blue_color = [bf floatValue];
    frac::DrawFractal(frame);
    cv::imshow("image", frame);
}

- (IBAction) saveImage: (id) sender {
    
    if(frame.empty()) return;
    
    NSSavePanel *panel = [NSSavePanel savePanel];
    [panel setAllowedFileTypes: [NSArray arrayWithObjects: @"png", @"jpg", nil]];
    [panel setCanCreateDirectories: YES];
    [panel setExtensionHidden: YES];
    
    if([panel runModal]) {
        NSString *s = [[panel URL] path];
        cv::imwrite([s UTF8String], frame);
    }
    
}

@end
