//
//  DrawingsViewController.m
//  RSSchool_T8
//
//  Created by Mishka on 18.07.2021.
//

#import "DrawingsViewController.h"
#import "STPButton.h"

@interface DrawingsViewController ()

@property (weak, nonatomic) IBOutlet STPButton *planetButton;
@property (weak, nonatomic) IBOutlet STPButton *headButton;
@property (weak, nonatomic) IBOutlet STPButton *treeButton;
@property (weak, nonatomic) IBOutlet STPButton *landscapeButton;

@end

@implementation DrawingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional visionSetup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;;
    self.navigationItem.title = @"Drawings";
    
    STPButton *planetButton = [[STPButton alloc] initWithFrame:CGRectMake(88.0, 114.0, 200.0, 40.0)];
    [planetButton setTitle:@"Planet" forState:UIControlStateNormal];
    [planetButton visionSetup];
    [self.view addSubview: planetButton];
    
    STPButton *headButton = [[STPButton alloc] initWithFrame:CGRectMake(88.0, 169.0, 200.0, 40.0)];
    [headButton setTitle:@"Head" forState:UIControlStateNormal];
    [headButton visionSetup];
    [self.view addSubview: headButton];
    
    STPButton *treeButton = [[STPButton alloc] initWithFrame:CGRectMake(88.0, 224.0, 200.0, 40.0)];
    [treeButton setTitle:@"Tree" forState:UIControlStateNormal];
    [treeButton visionSetup];
    [self.view addSubview: treeButton];
    
    STPButton *landscapeButton = [[STPButton alloc] initWithFrame:CGRectMake(88.0, 279.0, 200.0, 40.0)];
    [landscapeButton setTitle:@"Landscape" forState:UIControlStateNormal];
    [landscapeButton visionSetup];
    [self.view addSubview: landscapeButton];
    
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
