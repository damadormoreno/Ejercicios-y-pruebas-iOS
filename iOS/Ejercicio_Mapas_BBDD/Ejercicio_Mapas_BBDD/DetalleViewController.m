//
//  DetalleViewController.m
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 13/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "DetalleViewController.h"

@interface DetalleViewController ()
@property Game* gameARecibir;
@property (weak, nonatomic) IBOutlet UITextField *tfNombre;
@property (weak, nonatomic) IBOutlet UITextField *tfGenero;
@property (weak, nonatomic) IBOutlet UITextField *tfPuntuacion;
@property (weak, nonatomic) IBOutlet MKMapView *map;

@end

@implementation DetalleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Game* game = _gameARecibir;
    [_tfNombre setText:game.nombre];
    [_tfGenero setText:game.genero];
    [_tfPuntuacion setText:[NSString stringWithFormat:@"%d",game.puntuacion]];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(_gameARecibir.localizacion, 500, 500);
    
    _map.region=region;
    _map.delegate=self;

}
-(void)viewWillAppear:(BOOL)animated{
    //Podemos poner anotaciones (Markes en Android), tipicas chinchetillas que ponemos en los mapas.
    
    //Creamos la anotación, en este caso.
    MKPointAnnotation *anotacion = [MKPointAnnotation new];
    anotacion.coordinate = _gameARecibir.localizacion;
    anotacion.title = @"Aquí se hizo nuestro juego.";
    anotacion.subtitle=@"Y más cosas";
    
    [_map addAnnotation:anotacion];
}
-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    NSLog(@"Vamos a poner la anotación con el título %@", [annotation title]);
    
    return nil;
}
-(void)loadData:(Game*)data{
    _gameARecibir=data;
}
- (IBAction)volver:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)borrarGame:(id)sender {
    DaoGame* daoGame = [DaoGame new];
    [daoGame borrarGame:_tfNombre.text];
}
- (IBAction)editarGame:(id)sender {
    DaoGame* daoGame = [DaoGame new];
    CLLocationCoordinate2D location;
    location.latitude=40;
    location.longitude=-3;
    Game *game = [[Game alloc]initConNombre:_tfNombre.text ConGenero:_tfGenero.text ConPuntuacion:[_tfPuntuacion.text intValue] ConLocalizacion:location];
    //[daoGame editarJuego:game id:[daoJuego buscarJuego:_juegoARecibir.nombre]];
    [daoGame editarJuego:game id:_gameARecibir.identificador];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
