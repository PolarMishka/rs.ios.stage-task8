//
//  STPButton.m
//  RSSchool_T8
//
//  Created by Mishka on 19.07.2021.
//

#import "STPButton.h"

@implementation STPButton

- (void)visionSetup {
    self.backgroundColor = UIColor.whiteColor;
    self.layer.cornerRadius = 10.0;
    self.layer.shadowColor = UIColor.blackColor.CGColor;
    self.layer.shadowRadius = 2.0;
    self.layer.shadowOffset = CGSizeZero;
    self.layer.shadowOpacity = 0.25;
    self.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
    [self setTitleColor:[UIColor colorNamed:@"Light Green Sea"] forState:UIControlStateNormal];
}

- (void)setHighlighted: (BOOL)highlighted {
    
    super.highlighted = highlighted;
    
    if (highlighted) {
        self.layer.shadowColor = [UIColor colorNamed:@"Light Green Sea"].CGColor;
        self.layer.shadowRadius = 2.0;
        self.layer.shadowOpacity = 1;
    }
    else{
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowRadius = 2.0;
        self.layer.shadowOpacity = 0.25;
    }
}

@end
