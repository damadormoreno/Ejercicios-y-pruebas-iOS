//
//  GameConnectBBDD.m
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 11/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "GameConnectBBDD.h"


@implementation GameConnectBBDD

-(id)init{
    if(self =[super init]){
        
        NSArray* rutas = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        
        NSString* rutaDirectory = [rutas objectAtIndex:0];
        
        NSString* rutaBBDD = [rutaDirectory stringByAppendingPathComponent:@"bbddgame.sqlite"];
        
        sqlite3_open_v2([rutaBBDD UTF8String],
                        &_bbdd,
                        SQLITE_OPEN_READWRITE|SQLITE_OPEN_CREATE,
                        nil);
        NSLog(@"%@",rutaDirectory);
    }
    return self;
}


-(void)crearTablaGame{
    char* error;
    const char *crearTabla = "create table if not exists GAMES(id integer primary key autoincrement, nombre text, genero text, puntuacion integer, latitud real, longitud real)";
    sqlite3_exec(_bbdd, crearTabla, nil, nil, &error);
    if(error){
        NSLog(@"Error al crear la tabla %s",error);
    }

}

-(void)dealloc{
    sqlite3_close(_bbdd);
}

@end
