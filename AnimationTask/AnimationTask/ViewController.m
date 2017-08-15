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

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)compressButtonPressed:(UIButton *)sender {

    [UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionAutoreverse animations:^{
        self.compressLabel.transform = CGAffineTransformMakeScale(1.2, 1.2);
        self.compressButton.transform = CGAffineTransformMakeScale(1.2, 1.2);
    } completion:^(BOOL finished) {
        self.compressLabel.transform = CGAffineTransformMakeScale(1.0, 1.0);
        self.compressButton.transform = CGAffineTransformMakeScale(1.0, 1.0);
    }];
    
}

- (IBAction)pulseButtonPressed:(id)sender {

    [UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionAutoreverse animations:^{
        self.pulseLabel.transform = CGAffineTransformMakeTranslation(100.0, 0.0);
        self.pulseButton.transform = CGAffineTransformMakeTranslation(100.0, 0.0);
    } completion:^(BOOL finished) {
        self.pulseLabel.transform = CGAffineTransformIdentity;
        self.pulseButton.transform = CGAffineTransformIdentity;
//        self.pulseLabel.transform = CGAffineTransformMakeTranslation(100.0, 0.0);
//        self.pulseButton.transform = CGAffineTransformMakeTranslation(100.0, 0.0);
    }];
    
}

- (IBAction)shakeButtonPressed:(UIButton *)sender {

    [UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionAutoreverse animations:^{
        self.shakeLabel.transform = CGAffineTransformMakeScale(1.2, 1.2);
        self.shakeButton.transform = CGAffineTransformMakeScale(1.2, 1.2);
    } completion:^(BOOL finished) {
        self.shakeLabel.transform = CGAffineTransformMakeScale(1.0, 1.0);
        self.shakeButton.transform = CGAffineTransformMakeScale(1.0, 1.0);
    }];
    
}

@end
