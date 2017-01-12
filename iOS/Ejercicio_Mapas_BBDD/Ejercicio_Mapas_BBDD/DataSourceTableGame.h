//
//  DataSourceTableGame.h
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 13/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "UIKit/UIkit.h"
#import "Game.h"

@interface DataSourceTableGame : NSObject<UITableViewDataSource>

@property NSMutableArray* arrayGames;

-(Game*)gameAt:(long)posicion;

@end
