# OpenCVIOS
Display contours of an image using the OpenCV library.

Things to note:

1. Your view controllers must end with `.mm` instead of `.m`. Refer to http://docs.opencv.org/2.4/doc/tutorials/ios/hello/hello.html#opencvioshelloworld for details.

2. Headers you will need to include either in .h or .mm file:
#import "opencv2/highgui/ios.h"
#include "opencv2/opencv.hpp" // Required for CV_RGBA2GRAY variable
