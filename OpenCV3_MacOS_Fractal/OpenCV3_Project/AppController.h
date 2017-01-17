//
//  AppCtronller.h
//  OpenCV3_Project
//
//  Created by Jared Bruni on 1/12/17.
//  Copyright © 2017 Jared Bruni. All rights reserved.
//

#ifndef AppCtronller_h
#define AppCtronller_h

#include "CVTest.h"
#import<Cocoa/Cocoa.h>


@interface AppController : NSObject {
    
    IBOutlet NSSlider *slide1, *slide2, *slide3;
    IBOutlet NSTextField *field, *iter, *field_cnt, *iter_nt, *rf, *gf, *bf;
    IBOutlet NSWindow *window;
    IBOutlet NSButton *chk1, *chk2;
    
    cv::Mat frame;
}

- (IBAction) openImage: (id) sender;


@end

#endif /* AppCtronller_h */
