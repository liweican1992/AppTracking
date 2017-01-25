
#import "ViewControllOne.h"

@interface ViewControllOne ()
@property (nonatomic,strong) UIButton * buttonTwo;
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewControllOne
- (void)viewDidLoad{
    [super viewDidLoad];
    self.buttonTwo = [UIButton buttonWithType:0];
    [self.buttonTwo setTitle:@"ButtonTwo" forState:0];
    [self.buttonTwo sizeToFit];
    
    self.buttonTwo.center = self.label.center;
    self.buttonTwo.frame = CGRectMake(100, self.buttonTwo.frame.origin.y, self.buttonTwo.frame.size.width, self.buttonTwo.frame.size.height);
    [self.buttonTwo setTitleColor:[UIColor blueColor] forState:0];
    
    [self.buttonTwo addTarget:self action:@selector(buttonTwoAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_buttonTwo];
    
    
}
- (IBAction)buttonAction:(UIButton *)sender {
    
}

- (void)buttonTwoAction:(id)sender{
    
    
}
- (IBAction)sliderValueChanged:(id)sender {
    
}
@end
