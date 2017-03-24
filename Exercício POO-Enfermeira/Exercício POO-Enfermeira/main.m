//
//  main.m
//  Exercício POO-Enfermeira
//
//  Created by Usuário Convidado on 09/03/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Enfermeira.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {/*
        Enfermeira *e = [[Enfermeira alloc]init];
        [e setNome:@"Geoverderson"];
        [e setSalario:7500];
        [e setCoren:123456];
        [e setPlantao:YES];
        NSLog(@"Nome: %@ - Salário %0.2f",[e getNome], [e getSalario]);
        NSLog(@"Conselho Regional de Enfermagem - COREN: %d", [e getCoren]);
        
        // IF TERNÁRIO
        NSLog(@"Enfemeiro atende plantao %@",[e getPlantao]? @"SIM":@"NAO");
        
        
        //mostrando o boleano com IF TERNÁRIO
        NSLog(@"Enfermeiro atende Plantão %@", [e getPlantao]? @"SIM":@"NÃO");
        [e setPlantao:NO];
        //mostrando o boleano com IF Composto
        NSString *resposta;
        if ([e getPlantao]){
            resposta = @"SIM";}
        else{
            resposta = @"NÃO";}
        
        NSLog(@"Enfermeiro atende Plantão %@", resposta);
                       */
        
        Enfermeira *melissa = [[Enfermeira alloc] initWithNome:@"Melissa" andCoren:76058 andPlantao:YES andSalario:5000];
        NSLog(@"Enfermeira: %@",[melissa getNome]);
        NSLog(@"Coren: %d", [melissa getCoren]);
        NSLog(@"Plantonista?: %@", [melissa getPlantao]? @"SIM":@"NÃO");
        NSLog(@"Salario: %0.2f", [melissa getSalario] );
        
        
        NSLog(@"%0.2f",[melissa calcularSoroComQtdMl:100 eFrequenciaaoDia:2]);
        
        NSLog(@"%0.2f", [melissa verQtdRemedioDisponivelParaTratamentoComQuantidade:20 ePosologia:2]);
        
        NSLog(@"%@",[melissa medicarComQtdComprimidos:2 eNomeRemedio:@"Omeprazol"]);
        
        NSLog(@"%@",[melissa prepararBanhoComTemperatura:10 eHoraCheia:10 eDuracao:10 ]);
        
    }
    return 0;
         
}
