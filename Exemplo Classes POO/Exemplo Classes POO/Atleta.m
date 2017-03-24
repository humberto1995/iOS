//
//  Atleta.m
//  Exemplo Classes POO
//
//  Created by Usuário Convidado on 10/03/17.
//  Copyright © 2017 Jaime Ricardo. All rights reserved.
//

#import "Atleta.h"
#import "IMCException.h"

@implementation Atleta

-(void)setNome:(NSString *)_nome{
    nome = _nome;
}
-(NSString *)getNome{
    
    return nome;
}

-(void)setIdade:(int)_idade{
    
    idade=_idade;

}
-(int)getIdade{
    
    return idade;


}
-(void)calcularImcCompeso:(float) peso eAltura:(float) altura{

    float imc;
    if(altura >2.2){
        NSString *motivo = @"A altura nào pode ser maior que 2.2";
        NSException *e = [IMCException exceptionWithName:@"blabla"
                                                  reason:motivo
                                                userInfo:nil];
        @throw e;
    }

    imc = peso / pow(altura,2);

    NSLog(@"O IMC de %@ é %0.2f",[self getNome], imc);

}

-(NSString *)calcularRendimentoNaAguaWithTempo:(float) hora
                                  andDistancia:(float) metros{

    float resultado;
    resultado = metros/hora;
    return [NSString stringWithFormat:@"Meu rendimento na água é %0.2f por hora",resultado];

}

-(Atleta *)initWithNome:(NSString *) _nome
               andIdade:(int) _idade{


    self=[super init];
    if(self){
        [self setNome:_nome];
        [self setIdade:_idade];
    
    }
    return self;
}

-(void)comerCarboidrato{
    NSLog(@"Comer batata doce");
}

-(void)beberIsotonico{
    NSLog(@"Beber Gatorade");
}

@end
