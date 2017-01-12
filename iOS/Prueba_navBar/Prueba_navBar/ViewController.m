//
//  ViewController.m
//  Prueba_navBar
//
//  Created by David on 14/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
}

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    [self styleNavBar];
//}
//
//- (void)styleNavBar {
//    // 1. hide the existing nav bar
//    [self.navigationController setNavigationBarHidden:YES animated:NO];
//    
//    // 2. create a new nav bar and style it
//    UINavigationBar *newNavBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 64.0)];
//    [newNavBar setTintColor:[UIColor whiteColor]];
//    
//    // 3. add a new navigation item w/title to the new nav bar
//    UINavigationItem *newItem = [[UINavigationItem alloc] init];
//    newItem.title = @"Paths";
//    [newNavBar setItems:@[newItem]];
//    
//    // 4. add the nav bar to the main view
//    [self.view addSubview:newNavBar];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goToAdd:(id)sender {
    [self performSegueWithIdentifier:@"add" sender:nil];
}
- (IBAction)iraañadir:(id)sender {
    [self performSegueWithIdentifier:@"add" sender:nil];
}



@end
