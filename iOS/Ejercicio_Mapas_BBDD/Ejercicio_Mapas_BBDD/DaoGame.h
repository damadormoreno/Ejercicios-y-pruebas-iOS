//
//  DaoGame.h
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 11/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
#import "GameConnectBBDD.h"

@interface DaoGame : NSObject

-(void)guardarame:(Game*)game;
-(NSMutableArray*)listarGames;
-(int)buscarGame:(NSString*)nombre;
-(void)editarJuego:(Game*)videojuego id:(int)identificador;
-(void)borrarGame:(NSString*)nombre;

@end
