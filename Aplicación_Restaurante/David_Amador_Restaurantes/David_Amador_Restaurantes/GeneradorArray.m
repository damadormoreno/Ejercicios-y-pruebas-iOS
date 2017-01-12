//
//  GeneradorArray.m
//  David_Amador_Restaurantes
//
//  Created by David on 15/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "GeneradorArray.h"



@implementation GeneradorArray

-(NSMutableArray *)generadorDeArraysMolones{
    
  
    
    Restaurante *r1 = [[Restaurante alloc]initConNombre:@"Casa Paco" ConDescripcion:@"Unos huevos de lujo" ConLongitud:40.27 ConLatitud:3.35];
    Restaurante *r2 = [[Restaurante alloc]initConNombre:@"Bar Reinolds" ConDescripcion:@"Mauricio and company " ConLongitud:41.0 ConLatitud:-5.0];
    Restaurante *r3 = [[Restaurante alloc]initConNombre:@"Lucecitas Walker" ConDescripcion:@"La ilusión de cada día" ConLongitud:45.0 ConLatitud:-3.0];
    Restaurante *r4 = [[Restaurante alloc]initConNombre:@"Casa Miento" ConDescripcion:@"PArejas everywhere" ConLongitud:43.0 ConLatitud:-4.0];
    Restaurante *r5 = [[Restaurante alloc]initConNombre:@"Bar Muñones" ConDescripcion:@"Para programadores de lujo" ConLongitud:40.0 ConLatitud:-3.0];
    Restaurante *r6 = [[Restaurante alloc]initConNombre:@"Bar Tolo" ConDescripcion:@"Tenía una flauta" ConLongitud:41.0 ConLatitud:-5.0];
    Restaurante *r7 = [[Restaurante alloc]initConNombre:@"Bar loncesto" ConDescripcion:@"Pelotas" ConLongitud:41.0 ConLatitud:5.0];
    Restaurante *r8 = [[Restaurante alloc]initConNombre:@"Bar Rio" ConDescripcion:@"Una carta muy loca" ConLongitud:41.0 ConLatitud:5.0];
    Restaurante *r9 = [[Restaurante alloc]initConNombre:@"Bar Celona" ConDescripcion:@"Una carta muy loca" ConLongitud:41.0 ConLatitud:-5.0];
    Restaurante *r10 = [[Restaurante alloc]initConNombre:@"Bar Tolomeo" ConDescripcion:@"y lo cago" ConLongitud:41.0 ConLatitud:5.0];
    
    
    NSMutableArray *arrayRestaurantes = [NSMutableArray new];
    [arrayRestaurantes addObject:r1];
    [arrayRestaurantes addObject:r2];
    [arrayRestaurantes addObject:r3];
    [arrayRestaurantes addObject:r4];
    [arrayRestaurantes addObject:r5];
    [arrayRestaurantes addObject:r6];
    [arrayRestaurantes addObject:r7];
    [arrayRestaurantes addObject:r8];
    [arrayRestaurantes addObject:r9];
    [arrayRestaurantes addObject:r10];
    
    
    
    return arrayRestaurantes;
}

@end
