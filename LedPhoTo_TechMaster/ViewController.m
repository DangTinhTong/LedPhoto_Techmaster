//
//  ViewController.m
//  LedPhoTo_TechMaster
//
//  Created by admin on 10/20/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *LedPhoto;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Khai bao
    _LedPhoto.image =[UIImage imageNamed:@"Blue"];
    // Hoac dung self.LedPhoto.image --> truy xuat property
     // _LedPhoto -> Truy xuat toi instance variable
    
    // In ra đia chỉ file binary sau khi được biên dich'
    NSString *path =[[NSBundle mainBundle] resourcePath];
    // NSString *path ==>> Con tro path kieu string
    // Kêt quả trả về của [ NSBundle mainBundle] là chủ thể trong lời gọi phương thức resourcePath
    // NSBundle là đôi tượng gọi phương thức mainBundle
    NSLog(@"%@",path);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ONOFFAction:(id)sender {
  //  NSLog(@"Hello world.");
    if([_LedPhoto.image isEqual:[UIImage imageNamed:@"Blue"]])
    {
        _LedPhoto.image =[UIImage imageNamed:@"Orange"];
    }else {
        _LedPhoto.image =[UIImage imageNamed:@"Blue"];
    }
}

@end
