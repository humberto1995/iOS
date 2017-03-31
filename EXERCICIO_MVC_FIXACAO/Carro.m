//
//  Carro.m
//  EXERCICIO_MVC_FIXACAO
//
//  Created by Usuário Convidado on 31/03/17.
//  Copyright © 2017 Humberto Cavalcanti Krzywy. All rights reserved.
//

#import "Carro.h"

@implementation Carro

-(NSString *)getNome{
    return nome;
}

-(void)setNome:(NSString *)_nome{
    nome = _nome;
}

-(BOOL)getNovo{
    return novo;
}

-(void)setNovo:(BOOL)_novo{
    novo = _novo;
}

-(int)getKmRodado:(int)_kmRodado{
    return kmRodado;
}

-(void)setKmRodado:(int)_kmRodado{
    kmRodado = _kmRodado;
}

-(float)getValor:(float)_valor{
    return valor;
}

-(void)setValor:(float)_valor{
    valor = _valor;
}

-(Carro *)initWithNome:(NSString *) _nome
               andNovo:(BOOL) _novo
           andKmRodado:(int) _kmRodado
              andValor:(float) _valor{
    self=[super init];
    if(self){
        [self setNome:_nome];
        [self setNovo:_novo];
        [self setKmRodado:_kmRodado];
        [self setValor:_valor];
    }
    return self;
}

@end
