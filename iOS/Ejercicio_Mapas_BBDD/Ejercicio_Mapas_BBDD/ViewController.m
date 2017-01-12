//
//  ViewController.m
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 11/11/2016.
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)altaView:(id)sender {
    [self performSegueWithIdentifier:@"alta" sender:nil];
}

- (IBAction)listaView:(id)sender {
    [self performSegueWithIdentifier:@"listado" sender:nil];
}

@end
