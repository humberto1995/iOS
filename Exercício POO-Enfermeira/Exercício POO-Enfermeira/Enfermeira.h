//
//  Enfermeira.h
//  Exercício POO-Enfermeira
//
//  Created by Usuário Convidado on 09/03/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Enfermeira : NSObject{
    NSString *nome;
    int coren;
    BOOL plantao;
    float salario;
}

-(void)setNome:(NSString *)_nome;
-(NSString *)getNome;

-(void)setCoren:(int)_coren;
-(int)getCoren;

-(void)setPlantao:(BOOL)_plantao;
-(BOOL)getPlantao;

-(void)setSalario:(float)_salario;
-(float)getSalario;


-(NSString *)medicarComQtdComprimidos:(int) qtd
                         eNomeRemedio:(NSString *) nomeRemedio;

-(float)calcularSoroComQtdMl:(float) mililitros
            eFrequenciaaoDia:(int) qtd;

-(NSString *)prepararBanhoComTemperatura:(int) temperatura
                              eHoraCheia:(int) horario
                                eDuracao:(int)minutos
;


// aqui fazemos uma divisão de qtd de medicamento pela posologia.
//indicada pelo meédico e sabemos quantos dias o rem;eio dura.
-(float)verQtdRemedioDisponivelParaTratamentoComQuantidade:(int) qtd
                                                ePosologia:(int) poso;




-(Enfermeira *)initWithNome:(NSString *)_nome andCoren:(int)_coren andPlantao:(BOOL)_plantao andSalario:(float)_salario;




@end
