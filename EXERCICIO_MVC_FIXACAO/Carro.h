//
//  Carro.h
//  EXERCICIO_MVC_FIXACAO
//
//  Created by Usuário Convidado on 31/03/17.
//  Copyright © 2017 Humberto Cavalcanti Krzywy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Carro : NSObject{

NSString *nome;
BOOL novo;
int kmRodado;
float valor;

}

-(void)setNome:(NSString *)_nome;
-(NSString *)getNome;

-(void)setNovo:(BOOL) _novo;
-(BOOL)getNovo;

-(void)setKmRodado:(int) _kmRodado;
-(int)getKmRodado;

-(void)setValor:(float) _valor;
-(float)getValor;

-(Carro *)initWithNome:(NSString *) _nome
               andNovo:(BOOL) _novo
           andKmRodado:(int) _kmRodado
              andValor:(float) _valor;

@end
