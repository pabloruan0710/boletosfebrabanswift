//
//  BoletosValores.swift
//  PS Mobile
//
//  Created by Pablo on 2/26/16.
//  Copyright © 2016 PrimeSoftware. All rights reserved.
//

import Foundation


/**
 Função Para Retornar dados de boletos lidos pelo código de barras padrão Febraban.
 Posição 01-03 = Identificação do banco (exemplo: 001 = Banco do Brasil)
 Posição 04-04 = Código de moeda (exemplo: 9 = Real)
 Posição 05-09 = 5 primeiras posições do campo livre (posições 20 a 24 do código de barras)
 Posição 10-10 = Dígito verificador do primeiro campo
 Posição 11-20 = 6ª a 15ª posições do campo livre (posições 25 a 34 do código de barras)
 Posição 21-21 = Dígito verificador do segundo campo
 Posição 22-31 = 16ª a 25ª posições do campo livre (posições 35 a 44 do código de barras)
 Posição 32-32 = Dígito verificador do terceiro campo
 Posição 33-33 = Dígito verificador geral (posição 5 do código de barras)
 Posição 34-37 = Fator de vencimento (posições 6 a 9 do código de barras)
 Posição 38-47 = Valor nominal do título (posições 10 a 19 do código de barras)
 
 http://boletobancario-codigodebarras.blogspot.com.br/
 http://gerador3x.blogspot.com.br/
 
 - returns bar: Retorna Valor, Tipo de Empresa, Data de Vencimento.
 */
class Boletos {
    
    
    /**
     Retorna dados de boletos LIDOS de arrecardação/recebimento
     e boletos de cobranças, desde que sejam lidos e não digitados.
     */
    class func getValuesBoletoLidos(CodigoBarras:String)->NSDictionary{
        
        let TamanhoCodigo = CodigoBarras.characters.count
        var NomeBanco:String = String()
        var Vencimento:String = String()
        var Valor:String = String()
        
        
        if TamanhoCodigo >= 44 {
            
            //IDENTIFICACAO PRODUTO   ->  ARRECARDAÇÃO
            if (CodigoBarras as NSString).substringWithRange(NSRange(location: 0, length: 1)) == "8" {
                
                //SEGMENTO - TIPO CONVENIO POSICAO 2 - 2
                let id_segmento = (CodigoBarras as NSString).substringWithRange(NSRange(location: 1, length: 1))
                
                //VALOR POSICAO
                let id_valor = (CodigoBarras as NSString).substringWithRange(NSRange(location: 4, length: 11))
                
                //VENCIMENTO
                //let vencimento = (CodigoBarras as NSString).substringWithRange(NSRange(location: 5, length: 4))
                
                //PEGA NOME DO CONVENIO
                NomeBanco = getNameConvenios(id_segmento)
                Vencimento = "Boleto pode ser pago em qualquer data"
                Valor = id_valor
                
            }
                /// Boletos Sem Convenios
            else{
                
                //Codigo do banco 1 a 3
                let id_banco = (CodigoBarras as NSString).substringWithRange(NSRange(location: 0, length: 3))
                
                //Fator de vencimento (posições 6 a 9 do código de barras)
                let fator_vencimento = (CodigoBarras as NSString).substringWithRange(NSRange(location: 5, length: 4))
                
                // Valor nominal do título (posições 10 a 19 do código de barras)
                let valor_nominal = (CodigoBarras as NSString).substringWithRange(NSRange(location: 9, length: 10))
                
                
                NomeBanco = getNameBancos(id_banco)
                Valor = valor_nominal
                Vencimento = getVencimento(fator_vencimento)
            }
        }
        
        return ["banconome":NomeBanco,"valor":Valor,"datavencimento":Vencimento]
        
    }
    //FIM GETVALUESBOLETO LIDO
    
    
    /**
    Retorna dados de boletos LIDOS de arrecardação/recebimento
    e boletos de cobranças, desde que sejam lidos e não digitados.
    */
    class func getValuesBoletosDigitatos(CodigoBarras:String)->NSDictionary{
        
        let TamanhoCodigo = CodigoBarras.characters.count
        var NomeBanco:String = String()
        var Vencimento:String = String()
        var Valor:String = String()
        
        //verifico tamanho do código de barras
        if TamanhoCodigo >= 44 {
            
            //Boletos de arrecardação se a primeira posição começa com 8
            if (CodigoBarras as NSString).substringWithRange(NSRange(location: 0, length: 1)) == "8"{
                
                //SEGMENTO - TIPO CONVENIO POSICAO 2 - 2
                let id_segmento = (CodigoBarras as NSString).substringWithRange(NSRange(location: 1, length: 1))
                
                //VALOR
                let id_valor = (CodigoBarras as NSString).substringWithRange(NSRange(location: 4, length: 11))
                
                //VENCIMENTO
                //let vencimento = (CodigoBarras as NSString).substringWithRange(NSRange(location: 5, length: 4))
                
                NomeBanco = getNameConvenios(id_segmento)
                Vencimento = "Boleto pode ser pago em qualquer data."
                Valor = id_valor
                
                
            }
                //boletos de cobranças
            else{
                //Codigo do banco 1 a 3
                let id_banco = (CodigoBarras as NSString).substringWithRange(NSRange(location: 0, length: 3))
                
                //Fator de vencimento (posições 6 a 9 do código de barras)
                let fator_vencimento = (CodigoBarras as NSString).substringWithRange(NSRange(location: 33, length: 4))
                
                // Valor nominal do título (posições 10 a 19 do código de barras)
                let valor_nominal = (CodigoBarras as NSString).substringWithRange(NSRange(location: 37, length: 10))
                
                
                NomeBanco = getNameBancos(id_banco)
                Valor = valor_nominal
                Vencimento = getVencimento(fator_vencimento)
            }
        }
        return ["banconome":NomeBanco,"valor":Valor,"datavencimento":Vencimento]
    }
}

//BOLETOS PARA TESTES

//CELG
//83610000002137200090509921791015000012682305

//SANEAGO
//82650000000405201060211949358216386700002026

//OI
//84650000001181600161184911582016020111100000

//GVT
//84610000007946900820999992706016031682833599

//CLARO
//84820000006506301602016022580131078507816122


//PREFEITURA
//85860000003872703281605301071604200490916690

//BOLETO COMPRAS
//39995000000009373322860287000001797250700002

//CAIXA
//10495671000000096805083583000200040000089522

//39995000000009373322860287000001797250700002


