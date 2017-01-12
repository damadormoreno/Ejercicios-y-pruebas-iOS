//
//  DetalleViewController.h
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 13/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "DaoGame.h"
#import "Game.h"

@interface DetalleViewController : UIViewController<MKMapViewDelegate>

-(void)loadData:(Game*)data;

@end
