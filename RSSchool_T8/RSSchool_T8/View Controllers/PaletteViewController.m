//
//  PaletteViewController.m
//  RSSchool_T8
//
//  Created by Mishka on 20.07.2021.
//

#import "PaletteViewController.h"

@interface PaletteViewController ()

@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional visionSetup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    UILabel *text = [[UILabel alloc] initWithFrame:CGRectMake(58.0, 114.0, 260.0, 150.0)];
    text.backgroundColor = UIColor.systemBlueColor;
    text.lineBreakMode = NSLineBreakByWordWrapping;
    text.numberOfLines = 0;
    text.layer.masksToBounds = true;
    text.layer.cornerRadius = 10.0;
    text.textColor = UIColor.whiteColor;
    text.textAlignment = NSTextAlignmentCenter;
    [text setText:@"Спасибо, что проверили! \n К сожалению, пока не успел доделать."];
    [self.view addSubview: text];
}

- (void)visionSetup {

}

- (void)hideViewController {

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
