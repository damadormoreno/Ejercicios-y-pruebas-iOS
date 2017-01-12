//
//  GameConnectBBDD.h
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 11/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"

@interface GameConnectBBDD : NSObject
@property (readonly) sqlite3* bbdd;

-(void)crearTablaGame;

@end
