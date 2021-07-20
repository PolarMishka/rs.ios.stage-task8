//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Mishka on 16.07.2021.
//

#import "ViewController.h"
#import "DrawingsViewController.h"
#import "STPButton.h"
#import "PaletteViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet STPButton *openPaletteButton;
@property (weak, nonatomic) IBOutlet STPButton *openTimerButton;
@property (weak, nonatomic) IBOutlet STPButton *drawButton;
@property (weak, nonatomic) IBOutlet STPButton *shareButton;
@property (weak, nonatomic) PaletteViewController * paletteViewController;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional visionSetup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    
   // ========  установка кнопок =========
    STPButton *openPaletteButton = [[STPButton alloc] initWithFrame:CGRectMake(20.0, 454.0, 163.0, 32.0)];
    [openPaletteButton setTitle:@"Open Palette" forState:UIControlStateNormal];
    [openPaletteButton visionSetup];
    [self.view addSubview: openPaletteButton];
    [openPaletteButton addTarget:self action:@selector(showPalette:) forControlEvents:UIControlEventTouchUpInside];
    
    STPButton *openTimerButton = [[STPButton alloc] initWithFrame:CGRectMake(20.0, 506.0, 151.0, 32.0)];
    [openTimerButton setTitle:@"Open Timer" forState:UIControlStateNormal];
    [openTimerButton visionSetup];
    [self.view addSubview: openTimerButton];
    [openPaletteButton addTarget:self action:@selector(showTimervisionSetup:) forControlEvents:UIControlEventTouchUpInside];
    
    STPButton *drawButton = [[STPButton alloc] initWithFrame:CGRectMake(243.0, 454.0, 91.0, 32.0)];
    [drawButton setTitle:@"Draw" forState:UIControlStateNormal];
    [drawButton visionSetup];
    [self.view addSubview: drawButton];
    
    STPButton *shareButton = [[STPButton alloc] initWithFrame:CGRectMake(239.0, 506.0, 95.0, 32.0)];
    [shareButton setTitle:@"Share" forState:UIControlStateNormal];
    [shareButton visionSetup];
    [self.view addSubview: shareButton];
    // =====================================
   
    // ======== установка view холста ======
    UIView *canvasView = [[UIView alloc] initWithFrame:CGRectMake(38, 102, 300, 300)];
    canvasView.backgroundColor = UIColor.whiteColor;
    canvasView.layer.cornerRadius = 8.0;
    canvasView.layer.shadowColor = [[UIColor colorNamed:@"Chill Sky"] CGColor];
    canvasView.layer.shadowRadius = 8.0;
    canvasView.layer.shadowOffset = CGSizeZero;
    canvasView.layer.shadowOpacity = 0.25;
    [self.view addSubview: canvasView];
    // =====================================
    
    // ========= установка палитры =========
    
//    [self addChildViewController: paletteViewController];
//    [paletteViewController visionSetup];
    //paletteViewController.modalPresentationStyle = UIModalPresentationFormSheet;
    
    // =====================================
   
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self visionSetupNavigationItems];
}

// ========   установки навигатора   ===
- (void)visionSetupNavigationItems {
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
// =========================================

// ====== функции кнопок ===================
- (void)showPalette:(id)sender {
    PaletteViewController *paletteViewController = [[PaletteViewController alloc] init];
    [self presentViewController: paletteViewController animated:YES completion: nil];
}

- (void)showTimervisionSetup:(UIButton *)sender {
    
}
//==========================================

@end
