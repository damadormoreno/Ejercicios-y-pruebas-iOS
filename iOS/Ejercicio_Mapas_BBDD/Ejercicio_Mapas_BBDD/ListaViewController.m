//
//  ListaViewController.m
//  Ejercicio_Mapas_BBDD
//
//  Created by David on 13/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

#import "ListaViewController.h"
#import "DataSourceTableGame.h"
#import "DaoGame.h"
#import "DetalleViewController.h"


@interface ListaViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tvListaGames;
@property DataSourceTableGame* dstg;
@end

@implementation ListaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    DaoGame* daoGame = [DaoGame new];
    NSMutableArray* arrayGames = [daoGame listarGames];
    _dstg = [DataSourceTableGame new];
    _dstg.arrayGames = arrayGames;
    
    _tvListaGames.dataSource = _dstg;
    _tvListaGames.delegate = self;
}

-(void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    long posicion = indexPath.row;
    Game* game = [_dstg gameAt:posicion];
    [self performSegueWithIdentifier:@"detalle" sender:game];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"detalle"]){
        DetalleViewController* viewcontroller = (DetalleViewController*)[segue destinationViewController];
        
        [viewcontroller loadData:sender];
    }
}
- (IBAction)volver:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)viewWillAppear:(BOOL)animated{
    
    DaoGame* daoGame = [DaoGame new];
    NSMutableArray* arrayGames = [daoGame listarGames];
    _dstg = [DataSourceTableGame new];
    _dstg.arrayGames = arrayGames;
    
    _tvListaGames.dataSource = _dstg;
    _tvListaGames.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
