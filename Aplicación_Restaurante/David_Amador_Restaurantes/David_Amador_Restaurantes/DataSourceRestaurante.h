//
//  DataSourceRestaurante.h
//  David_Amador_Restaurantes
//
//  Created by David on 15/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "UIKit/UIkit.h"
#import "Restaurante.h"

@interface DataSourceRestaurante : NSObject<UITableViewDataSource>

@property NSMutableArray* arrayRestaurantes;

-(Restaurante*)restauranteAt:(long)posicion;

@end
