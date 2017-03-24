//
//  ViewController.m
//  MEUS DADOS
//
//  Created by Usuário Convidado on 17/02/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    meuLabel1.text=@"Meu nome é....";
    meuLabel2.text=@"Minha idade é...";
    meuLabel3.text=@"Minha cidade é...";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)exibir:(id)sender {

    meuLabel1.text=@"Humberto";
    meuLabel2.text=@"21 anos";
    meuLabel3.text=@"São Bernardo do Campo";
}

- (IBAction)limpar:(id)sender {
    
    meuLabel1.text=@"";
    meuLabel2.text=@"";
    meuLabel3.text=@"";
    
    [self viewDidLoad];
    
}


@end
