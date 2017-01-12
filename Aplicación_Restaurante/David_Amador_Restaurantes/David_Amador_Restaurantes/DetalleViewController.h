//
//  DetalleViewController.h
//  David_Amador_Restaurantes
//
//  Created by David on 15/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Restaurante.h"

@interface DetalleViewController : UIViewController<MKMapViewDelegate>

-(void)loadData:(Restaurante*)data;

@end
