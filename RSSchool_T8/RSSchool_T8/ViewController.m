//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Mishka on 16.07.2021.
//

#import "ViewController.h"
#import "DrawingsViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *loginField;
@property (weak, nonatomic) IBOutlet UIButton *openPaletteButton;
@property (weak, nonatomic) IBOutlet UIButton *openTimerButton;
@property (weak, nonatomic) IBOutlet UIButton *drawButton;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.grayColor;
    
    UIButton *openPaletteButton = [[UIButton alloc] initWithFrame:CGRectMake(100.0, 200.0, 100.0, 100.0)];
    openPaletteButton.backgroundColor = [UIColor redColor];
    [self.view addSubview:openPaletteButton];
    
    UIButton *openTimerButton = [[UIButton alloc] initWithFrame:CGRectMake(100.0, 200.0, 100.0, 100.0)];
    
    UIButton *drawButton = [[UIButton alloc] initWithFrame:CGRectMake(100.0, 200.0, 100.0, 100.0)];
    
    UIButton *shareButton = [[UIButton alloc] initWithFrame:CGRectMake(100.0, 200.0, 100.0, 100.0)];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self setupNavigationItems];
}

- (void)setupNavigationItems {

    self.navigationItem.title = @"Artist";
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle:@"Drawings"
                                                             style:UIBarButtonItemStylePlain
                                                            target:self
                                                            action:@selector(nextTapped:)];
    self.navigationItem.rightBarButtonItem = next;
}

- (void)nextTapped:(id)sender {
    DrawingsViewController *viewController = [DrawingsViewController new];
    [self.navigationController pushViewController:viewController animated:YES];
}


@end
