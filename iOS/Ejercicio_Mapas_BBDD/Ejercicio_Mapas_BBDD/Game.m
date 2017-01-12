//
//  Game.m
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 11/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "Game.h"

@implementation Game

-(id)initConNombre:(NSString*)nombre ConGenero:(NSString*)genero ConPuntuacion:(int)puntuacion ConLocalizacion:(CLLocationCoordinate2D)localizacion{
    if (self=[super init]) {
        self.nombre=nombre;
        self.genero=genero;
        self.puntuacion=puntuacion;
        self.localizacion=localizacion;
    }
    return self;
}

@end
