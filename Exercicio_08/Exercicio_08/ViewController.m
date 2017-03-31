//
//  ViewController.m
//  Exercicio_08
//
//  Created by Usuário Convidado on 31/03/17.
//  Copyright © 2017 Humberto Cavalcanti Krzywy. All rights reserved.
//

#import "ViewController.h"
#import "Pessoa.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calcular:(id)sender {
    
    Pessoa *p = [[Pessoa alloc]init];
    
    p.peso = self.txtPeso.text.floatValue;
    p.altura = self.txtAltura.text.floatValue;
    p.nome = self.txtNome.text;
    
    [p calcularIMC];
    self.txtIMC.text = [NSString stringWithFormat:@"%f",p.imc];
    
    self.txtIMC.text = [NSString stringWithFormat:@"%0.2f",[p calcularIMC_2]];
}
@end
