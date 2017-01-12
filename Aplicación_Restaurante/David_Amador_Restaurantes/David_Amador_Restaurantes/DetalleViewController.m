//
//  DetalleViewController.m
//  David_Amador_Restaurantes
//
//  Created by David on 15/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "DetalleViewController.h"
#import <MapKit/MapKit.h>

@interface DetalleViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfNombre;
@property (weak, nonatomic) IBOutlet UITextField *tfDetalle;
@property (weak, nonatomic) IBOutlet MKMapView *map;
@property Restaurante* restauranteARecibir;
@property CLLocationCoordinate2D localizacion;

@end

@implementation DetalleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Restaurante* restaurante = _restauranteARecibir;
    [_tfNombre setText:restaurante.nombre];
    [_tfDetalle setText:restaurante.descripcion];
   
    
    _localizacion.longitude=restaurante.longitud;
    _localizacion.latitude=restaurante.latitud;
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(_localizacion, 500, 500);
    
    _map.region=region;
    _map.delegate=self;
}

-(void)viewWillAppear:(BOOL)animated{
    //Podemos poner anotaciones (Markes en Android), tipicas chinchetillas que ponemos en los mapas.
    
    //Creamos la anotación, en este caso.
    MKPointAnnotation *anotacion = [MKPointAnnotation new];
    anotacion.coordinate = _localizacion;
    anotacion.title = @"A comer como un cosaco";
    anotacion.subtitle=@"¡Y beber!";
    
    [_map addAnnotation:anotacion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadData:(Restaurante*)data{
    _restauranteARecibir=data;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
