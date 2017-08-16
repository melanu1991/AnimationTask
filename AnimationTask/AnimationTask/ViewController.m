#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *compressLabel;
@property (weak, nonatomic) IBOutlet UIButton *compressButton;
@property (weak, nonatomic) IBOutlet UILabel *pulseLabel;
@property (weak, nonatomic) IBOutlet UIButton *pulseButton;
@property (weak, nonatomic) IBOutlet UILabel *shakeLabel;
@property (weak, nonatomic) IBOutlet UIButton *shakeButton;

@end

@implementation ViewController

#pragma mark - life cycle view controller

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - actions

- (IBAction)compressButtonPressed:(UIButton *)sender {

    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionAutoreverse animations:^{
        self.pulseLabel.transform = CGAffineTransformMakeTranslation(100.0, 0.0);
        self.pulseButton.transform = CGAffineTransformMakeTranslation(100.0, 0.0);
    } completion:^(BOOL finished) {
        self.pulseLabel.transform = CGAffineTransformIdentity;
        self.pulseButton.transform = CGAffineTransformIdentity;
    }];
    
}

- (IBAction)pulseButtonPressed:(id)sender {

    [UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionAutoreverse animations:^{
        self.pulseLabel.transform = CGAffineTransformMakeScale(1.2, 1.2);
        self.pulseButton.transform = CGAffineTransformMakeScale(1.2, 1.2);
    } completion:^(BOOL finished) {
        if (finished) {
            self.pulseLabel.transform = CGAffineTransformMakeScale(1.0, 1.0);
            self.pulseButton.transform = CGAffineTransformMakeScale(1.0, 1.0);
        }
    }];
    
}

- (IBAction)shakeButtonPressed:(UIButton *)sender {

    [self moveForwardWithDelay:0.0];
    [self moveBackwardsWithDelay:0.21];
    [self moveForwardWithDelay:0.42];
    [self moveBackwardsWithDelay:0.63];
    [self backNormalStateWithDelay:0.84];
    
}

#pragma mark - helpers

- (void)backNormalStateWithDelay:(NSTimeInterval)delay {
    [UIView animateWithDuration:0.2 delay:delay options:UIViewAnimationOptionCurveLinear animations:^{
        self.shakeLabel.transform = CGAffineTransformIdentity;
        self.shakeButton.transform = CGAffineTransformIdentity;
    } completion:nil];
}

- (void)moveForwardWithDelay:(NSTimeInterval)delay {
    [UIView animateWithDuration:0.2 delay:delay options:UIViewAnimationOptionCurveLinear animations:^{
        self.shakeLabel.transform = CGAffineTransformMakeTranslation(20.0, 0.0);
        self.shakeButton.transform = CGAffineTransformMakeTranslation(20.0, 0.0);
    } completion:nil];
}

- (void)moveBackwardsWithDelay:(NSTimeInterval)delay {
    [UIView animateWithDuration:0.2 delay:delay options:UIViewAnimationOptionCurveLinear animations:^{
        self.shakeLabel.transform = CGAffineTransformMakeTranslation(-20.0, 0.0);
        self.shakeButton.transform = CGAffineTransformMakeTranslation(-20.0, 0.0);
    } completion:nil];
}

@end
