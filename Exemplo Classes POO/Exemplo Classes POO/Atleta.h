//
//  Atleta.h
//  Exemplo Classes POO
//
//  Created by Usuário Convidado on 10/03/17.
//  Copyright © 2017 Jaime Ricardo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlimentoLiquidoSolido.h"

@interface Atleta : NSObject<AlimentoLiquidoSolido>{
    NSString *nome;
    int idade;

}
//Setters and Getters
-(void)setNome:(NSString *)_nome;
-(NSString *)getNome;

-(void)setIdade:(int)_idade;
-(int)getIdade;

//Metódos
-(void)calcularImcCompeso:(float) peso
                  eAltura:(float) altura;

-(NSString *)calcularRendimentoNaAguaWithTempo:(float) hora
                                  andDistancia:(float) metros;

//Construtor
-(Atleta *)initWithNome:(NSString *) _nome
               andIdade:(int) _idade;


@end
