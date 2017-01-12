//
//  DaoGame.m
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 11/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "DaoGame.h"

@implementation DaoGame


-(void)guardarame:(Game*)game{
    GameConnectBBDD* jconnect = [[GameConnectBBDD alloc]init];
    sqlite3 *bbdd = jconnect.bbdd;
    
    NSString * sQuery = @"insert into GAMES (nombre,genero,puntuacion,latitud,longitud) values (?,?,?,?,?)";
    
    sqlite3_stmt *query = nil;
    sqlite3_prepare_v2(bbdd, [sQuery UTF8String], -1, &query, nil);
    
    sqlite3_bind_text(query, 1, [game.nombre UTF8String], -1, SQLITE_TRANSIENT);
    sqlite3_bind_text(query, 2, [game.genero UTF8String], -1, SQLITE_TRANSIENT);
    sqlite3_bind_int(query, 3, game.puntuacion);
    sqlite3_bind_double(query, 4, game.localizacion.latitude);
    sqlite3_bind_double(query, 5, game.localizacion.longitude);
    
    
    sqlite3_step(query);
    
    sqlite3_reset(query);

    
}
-(NSMutableArray*)listarGames{
    
    NSMutableArray* gamesArray = [[NSMutableArray alloc]init];
    GameConnectBBDD* jconnect = [[GameConnectBBDD alloc]init];
    sqlite3 *bbdd = jconnect.bbdd;
    
    NSString *sQuery = @"select * from GAMES order by nombre";
    
    sqlite3_stmt* query = nil;
    sqlite3_prepare_v2(bbdd,
                       [sQuery UTF8String],
                       -1,
                       &query,
                       nil);
    
    Game* game = nil;
    while(sqlite3_step(query)==SQLITE_ROW){
        int identificador = sqlite3_column_int(query, 0);
        NSString* nombre = [NSString stringWithUTF8String:(const char*) sqlite3_column_text(query, 1)];
        NSString* genero = [NSString stringWithUTF8String:(const char*) sqlite3_column_text(query, 2)];
        int puntuacion = sqlite3_column_int(query, 3);
        double latitud = sqlite3_column_double(query, 4);
        double longitud = sqlite3_column_double(query, 5);
        
        CLLocationCoordinate2D localizacion;
        localizacion.latitude=latitud;
        localizacion.longitude=longitud;
        
        game = [[Game alloc]initConNombre:nombre ConGenero:genero ConPuntuacion:puntuacion ConLocalizacion:localizacion];
        game.identificador=identificador;
        
        [gamesArray addObject:game];
    }
    sqlite3_reset(query);
    
    return gamesArray;
    
}
-(int)buscarGame:(NSString*)nombre{
    int encontrado=-1;
    
    GameConnectBBDD* gc = [[GameConnectBBDD alloc]init];
    sqlite3 *bbdd = gc.bbdd;
    
    NSString *sQuery = @"select * from GAMES where nombre=?";
    
    sqlite3_stmt* query = nil;
    
    sqlite3_prepare_v2(bbdd, [sQuery UTF8String], -1, &query, nil);
    
    sqlite3_bind_text(query,
                      1,
                      [nombre UTF8String],
                      -1,
                      SQLITE_STATIC);
    
    if(sqlite3_step(query)==SQLITE_ROW){
        encontrado = sqlite3_column_int(query, 0);
        
    }
    sqlite3_reset(query);
    
    return encontrado;
}
-(void)editarJuego:(Game*)videojuego id:(int)identificador{
    GameConnectBBDD *gc =[GameConnectBBDD new];
    sqlite3 *bbdd = gc.bbdd;
    
    NSString *sQuery = @"update GAMES set nombre =?, genero=?, puntuacion=? where id=?";
    sqlite3_stmt* query = nil;
    sqlite3_prepare_v2(bbdd, [sQuery UTF8String], -1, &query, nil);
    
    sqlite3_bind_int(query, 4, identificador);
    sqlite3_bind_text(query, 1, [videojuego.nombre UTF8String], -1, SQLITE_STATIC);
    sqlite3_bind_text(query, 2, [videojuego.genero UTF8String], -1, SQLITE_STATIC);
    sqlite3_bind_int(query, 3, videojuego.puntuacion);
    
    sqlite3_step(query);
    sqlite3_reset(query);
}
-(void)borrarGame:(NSString*)nombre{
    GameConnectBBDD* gc = [[GameConnectBBDD alloc]init];
    sqlite3 *bbdd = gc.bbdd;
    
    NSString *sQuery = @"delete from GAMES where nombre=?";
    
    sqlite3_stmt* query = nil;
    sqlite3_prepare_v2(bbdd,
                       [sQuery UTF8String],
                       -1,
                       &query,
                       nil);
    sqlite3_bind_text(query,
                      1,
                      [nombre UTF8String],
                      -1,
                      SQLITE_STATIC);
    sqlite3_step(query);
    sqlite3_reset(query);
    
}
@end
