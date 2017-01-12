//
//  Restaurante.m
//  David_Amador_Restaurantes
//
//  Created by David on 15/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "Restaurante.h"

@implementation Restaurante

-(id)initConNombre:(NSString *)nombre ConDescripcion:(NSString *)descripcion ConLongitud:(double)longitud ConLatitud:(double)latitud{
    if (self = [super init]) {
        self.nombre=nombre;
        self.descripcion=descripcion;
        self.longitud=longitud;
        self.latitud=latitud;
    }
    return self;
}

@end
