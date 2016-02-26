//
//  FatorVencimento.swift
//  PS Mobile
//
//  Created by Pablo on 2/26/16.
//  Copyright © 2016 PrimeSoftware. All rights reserved.
//

import Foundation



/*
Retorna valor de vencimento se existe. O vencimento de um boleto bancário (bloqueto de cobrança) corresponde ao número de dias decorridos entre a "data base" instituída pelo Banco Central do Brasil - BACEN e a "data de vencimento". A "data base" instituída pelo BACEN é: 07/10/1997.

Desta forma, um boleto bancário vencido em 31/12/2011 teria no campo "vencimento" os números: "5198". Os números "5198" correspondem ao número de dias decorridos entre 07/10/1997 e 31/12/2011 (31/12/2011 - 07/10/1997 = 5198).

Fator de vencimento  Posição 34-37 Boletos de cobraça
Fator de vencimento (posições 6 a 9 do código de barras) Febraban
*/
func getVencimento(fatorVencimento:String)->String{
    let venc:String!
    if fatorVencimento == "0000" {
        venc = "Boleto pode ser pago em qualquer data."
    }else{
        
        //PEGANDO VENCIMENTO QUE É A DATA BASE DO FEBRABAN 07/10/1997 + Numero de dias da posicao 34-37
        let database = "07/10/1997"
        let formartter = NSDateFormatter()
        formartter.dateFormat = "dd/M/yyyy"
        let data_aux = formartter.dateFromString(database)
        let dias:Int = ((fatorVencimento as? NSString)?.integerValue)!
        let venc_date = NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Day, value: dias, toDate: data_aux!, options: NSCalendarOptions.init(rawValue: 0))
        
        venc = formartter.stringFromDate(venc_date!)
        
    }
    
    return venc
}