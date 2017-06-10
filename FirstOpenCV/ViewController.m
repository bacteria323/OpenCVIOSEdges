//
//  ViewController.m
//  FirstOpenCV
//
//  Created by Shun Lee on 8/6/2017.
//  Copyright © 2017 mustardLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    image = [UIImage imageNamed:@"lena.png"];
    
    if (image != nil) {
        _imageView.image = image; // Displaying the image
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
