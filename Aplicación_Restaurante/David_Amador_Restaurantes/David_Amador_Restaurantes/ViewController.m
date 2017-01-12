//
//  ViewController.m
//  David_Amador_Restaurantes
//
//  Created by David on 15/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "ViewController.h"
#import "DataSourceRestaurante.h"
#import "DetalleViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tvListaRestaurantes;
@property DataSourceRestaurante* dstr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    GeneradorArray* generator = [GeneradorArray new];
    NSMutableArray* arrayRestaurantes = [generator generadorDeArraysMolones];
    _dstr = [DataSourceRestaurante new];
    _dstr.arrayRestaurantes = arrayRestaurantes;
    
    _tvListaRestaurantes.dataSource = _dstr;
    _tvListaRestaurantes.delegate = self;
}

-(void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    long posicion = indexPath.row;
    Restaurante* restaurante = [_dstr restauranteAt:posicion];
    [self performSegueWithIdentifier:@"detalle" sender:restaurante];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"detalle"]){
        DetalleViewController* viewcontroller = (DetalleViewController*)[segue destinationViewController];
        
        [viewcontroller loadData:sender];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
