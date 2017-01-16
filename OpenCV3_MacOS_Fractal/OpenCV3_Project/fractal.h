/*
 * Acid Cam v2 - OpenCV Edition
 * written by Jared Bruni ( http://lostsidedead.com )
 * (C) 2016 GPL
 */

#ifndef __FRACTAL__H_
#define __FRACTAL__H_
#include<opencv2/opencv.hpp>
#include<complex>
#include<string>

namespace frac {
    
    extern double paramA,paramB;
    extern float radius;
    extern float zoom;
    extern unsigned int max_iter;
    extern double red_color, green_color, blue_color;
	void FractalLogic();
	void DrawFractal(cv::Mat &frame, bool neg=false);
}

#endif

