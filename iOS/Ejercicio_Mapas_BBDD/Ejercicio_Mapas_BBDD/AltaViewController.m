//
//  AltaViewController.m
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 13/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "AltaViewController.h"

@interface AltaViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfNombre;
@property (weak, nonatomic) IBOutlet UITextField *tfGenero;
@property (weak, nonatomic) IBOutlet UITextField *tfPuntuacion;
@property (weak, nonatomic) IBOutlet UITextField *tfLatitud;
@property (weak, nonatomic) IBOutlet UITextField *tfLongitud;

@end

@implementation AltaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)guardarEnBBDD:(id)sender {
    NSString* nombre = _tfNombre.text;
    NSString* genero = _tfGenero.text;
    int puntuacion = [_tfPuntuacion.text intValue];
    double lat = [_tfLatitud.text doubleValue];
    double longi =[_tfLongitud.text doubleValue];
    CLLocationCoordinate2D localizacion;
    localizacion.latitude=lat;
    localizacion.longitude=longi;
    
    Game *game = [[Game alloc]initConNombre:nombre ConGenero:genero ConPuntuacion:puntuacion ConLocalizacion:localizacion];
    
    DaoGame *dg = [DaoGame new];
    [dg guardarame:game];
    [self limpiar];
}
- (IBAction)volver:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)limpiar{
    _tfNombre.text=@"";
    _tfGenero.text=@"";
    _tfPuntuacion.text=@"";
    _tfLatitud.text=@"";
    _tfLongitud.text=@"";
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
