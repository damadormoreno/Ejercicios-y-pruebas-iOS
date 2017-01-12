//
//  DataSourceTableGame.m
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 13/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "DataSourceTableGame.h"

@implementation DataSourceTableGame
//Metodo obligatorio
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* idCelda=@"celda";
    UITableViewCell* celda=nil;
    celda = [tableView dequeueReusableCellWithIdentifier:idCelda];
    if(celda==nil){
        celda = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCelda];
    }
    NSInteger posicion = [indexPath row];
    
    Game* game = [_arrayGames objectAtIndex:posicion];
    celda.textLabel.text = [NSString stringWithFormat:@"%@ - %@ - %d",game.nombre,game.genero, game.puntuacion];
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
    return _arrayGames.count;
}

-(NSString*)tableView:(UITableView*) tableView titleForHeaderInSection:(NSInteger)section{
    return @"Listado VideoJuegos";
}


-(Game*)gameAt:(long)posicion{
    Game* game = _arrayGames[posicion];
    return game;
}

@end
