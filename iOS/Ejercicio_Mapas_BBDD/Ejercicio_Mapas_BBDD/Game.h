//
//  Game.h
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 11/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Game : NSObject
@property int identificador;
@property NSString *nombre;
@property NSString *genero;
@property int puntuacion;
@property CLLocationCoordinate2D localizacion;

-(id)initConNombre:(NSString*)nombre ConGenero:(NSString*)genero ConPuntuacion:(int)puntuacion ConLocalizacion:(CLLocationCoordinate2D)localizacion;

@end
