//
//  main.m
//  Exemplo Classes POO
//
//  Created by Usuário Convidado on 10/03/17.
//  Copyright © 2017 Jaime Ricardo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Atleta.h"
#import "MassagemAtleta.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       
        Atleta *a = [[Atleta alloc]init];
        [a setNome:@"Maria Silva"];
        [a setIdade:22];
        NSLog(@"IRON Man %@ tem %d anos",[a getNome],[a getIdade]);
        
        [a calcularImcCompeso:80 eAltura:1.75];
        
        
        //Return de Texto
        NSLog(@"%@",[a calcularRendimentoNaAguaWithTempo:1.5 andDistancia:5000]);
        
        //Utilizando o Construtor para instanciar o Objeto
        
        Atleta *a2 =[[Atleta alloc]initWithNome:@"José Carlos" andIdade:45];
        NSLog(@"Iron Man %@ tem %d anos",[a2 getNome], [a2 getIdade]);
        [a2 calcularImcCompeso:80 eAltura:1.75];
        
        NSLog(@"%@",[a2 calcularRendimentoNaAguaWithTempo:1.5 andDistancia:5000]);
        
        MassagemAtleta *m = [[MassagemAtleta alloc]init];
        [m setAtleta:a2];
        [m massagear];
    
        @try {
            [a calcularImcCompeso:60 eAltura:2.70];
        } @catch (NSException *exception) {
            NSLog(@"Atenção ERRO: %@",[exception reason]);
        } @finally {
            
        }
        
        [a2 comerCarboidrato];
        [a beberIsotonico];
        
    }
    return 0;
}
