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
    IBOutlet NSTextField *field, *iter;
    
}

- (IBAction) openImage: (id) sender;


@end

#endif /* AppCtronller_h */
