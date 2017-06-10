//
//  ViewController.m
//  FirstOpenCV
//
//  Created by Shun Lee on 8/6/2017.
//  Copyright © 2017 mustardLabs. All rights reserved.
//

#import "ViewController.h"
#include "opencv2/opencv.hpp" // Required for CV_RGBA2GRAY variable

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    image = [UIImage imageNamed:@"lena.png"];
    
    UIImageToMat(image, cvImage);

    if (!cvImage.empty())
    {
        cv::Mat cvGrayImage;
        //convert the image to the one-channel
        cv::cvtColor(cvImage, cvGrayImage, CV_RGBA2GRAY);
        //apply Gaussian filter to remove small edges
        cv::GaussianBlur(cvGrayImage, cvGrayImage, cv::Size(5, 5), 1.2, 1.2);
        //calculate edges by applying Canny method
        cv::Canny(cvGrayImage, cvGrayImage, 0, 50);
        //set values of all pixels to gray color
        cvImage.setTo(cv::Scalar::all(255));
        //change color on edges
        cvImage.setTo(cv::Scalar(0, 128, 255, 255), cvGrayImage);
        //convert cv::Mat to UIImage* and show resulted image on imageView component
        _imageView.image = MatToUIImage(cvImage);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
