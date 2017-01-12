//
//  DataSourceRestaurante.m
//  David_Amador_Restaurantes
//
//  Created by David on 15/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "DataSourceRestaurante.h"

@implementation DataSourceRestaurante


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* idCelda=@"celda";
    UITableViewCell* celda=nil;
    celda = [tableView dequeueReusableCellWithIdentifier:idCelda];
    if(celda==nil){
        celda = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCelda];
    }
    NSInteger posicion = [indexPath row];
    
    Restaurante* restaurante = [_arrayRestaurantes objectAtIndex:posicion];
    celda.textLabel.text = [NSString stringWithFormat:@"%@",restaurante.nombre];
    if(posicion%2==0){
        celda.tintColor = [UIColor blackColor];
        celda.detailTextLabel.textColor =[UIColor whiteColor];
        celda.backgroundColor = [UIColor grayColor];
        celda.textLabel.textColor = [UIColor whiteColor];
    }else{
        celda.tintColor = [UIColor blackColor];
        celda.textLabel.textColor = [UIColor grayColor];
        celda.backgroundColor = [UIColor whiteColor];
        celda.detailTextLabel.textColor = [UIColor grayColor];
    }
    return celda;
    
}

-(NSInteger)tableView:(UITableView*) tableView numberOfRowsInSection:(NSInteger)section{
    return _arrayRestaurantes.count;
}

-(NSString*)tableView:(UITableView*) tableView titleForHeaderInSection:(NSInteger)section{
    return @"Restaurantes Chachi Puchis";
}

-(Restaurante*)restauranteAt:(long)posicion{
    Restaurante* restaurante = _arrayRestaurantes[posicion];
    return restaurante;
    
}

@end
