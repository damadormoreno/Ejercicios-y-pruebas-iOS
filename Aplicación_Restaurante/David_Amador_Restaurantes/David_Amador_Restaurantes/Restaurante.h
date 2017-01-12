//
//  Restaurante.h
//  David_Amador_Restaurantes
//
//  Created by David on 15/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Restaurante : NSObject

@property NSString *nombre;
@property NSString *descripcion;
@property double longitud;
@property double latitud;

-(id)initConNombre:(NSString *)nombre ConDescripcion:(NSString *)descripcion ConLongitud:(double)longitud ConLatitud:(double)latitud;

@end
