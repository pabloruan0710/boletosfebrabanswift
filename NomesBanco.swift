//
//  NomesBanco.swift
//  PS Mobile
//
//  Created by Pablo on 2/26/16.
//  Copyright © 2016 PrimeSoftware. All rights reserved.
//

import Foundation

/**
 Função para pegar nome de banco de acordo com Código.
 - parametro: Codigo do Banco
 - returns: Retorna somente nome do banco.
 */
func getNameBancos(Codigo:String) -> String {
    
    var BancoNome:String!
    
    switch Codigo {
    case "246":
        BancoNome = "Banco ABC Brasil S.A.";
    case "075":
        BancoNome = "Banco ABN AMRO S.A."
    case "025":
        BancoNome = "Banco Alfa S.A."
    case "641":
        BancoNome = "Banco Alvorada S.A."
    case "065":
        BancoNome = "Banco Andbank (Brasil) S.A."
    case "024":
        BancoNome = "Banco BANDEPE S.A."
    case "740":
        BancoNome = "Banco Barclays S.A."
    case "107":
        BancoNome = "Banco BBM S.A."
    case "096":
        BancoNome = "Banco BM&FBOVESPA de Serviços de Liquidação e Custódia S.A"
    case "318":
        BancoNome = "Banco BMG S.A."
    case "752":
        BancoNome = "Banco BNP Paribas Brasil S.A."
    case "248":
        BancoNome = "Banco Boavista Interatlântico S.A."
    case "218":
        BancoNome = "Banco Bonsucesso S.A."
    case "063":
        BancoNome = "Banco Bradescard S.A."
    case "036":
        BancoNome = "Banco Bradesco BBI S.A."
    case "204":
        BancoNome = "Banco Bradesco Cartões S.A."
    case "394":
        BancoNome = "Banco Bradesco Financiamentos S.A."
    case "237":
        BancoNome = "Banco Bradesco S.A."
    case "208":
        BancoNome = "Banco BTG Pactual S.A."
    case "263":
        BancoNome = "Banco Cacique S.A."
    case "473":
        BancoNome = "Banco Caixa Geral - Brasil S.A."
    case "040":
        BancoNome = "Banco Cargill S.A."
    case "739":
        BancoNome = "Banco Cetelem S.A."
    case "233":
        BancoNome = "Banco Cifra S.A."
    case "745":
        BancoNome = "Banco Citibank S.A."
    case "000":
        BancoNome = "Banco CNH Industrial Capital S.A."
    case "095":
        BancoNome = "Banco Confidence de Câmbio S.A."
    case "756":
        BancoNome = "Banco Cooperativo do Brasil S.A. - BANCOOB"
    case "748":
        BancoNome = "Banco Cooperativo Sicredi S.A."
    case "222":
        BancoNome = "Banco Credit Agricole Brasil S.A."
    case "505":
        BancoNome = "Banco Credit Suisse (Brasil) S.A."
    case "003":
        BancoNome = "Banco da Amazônia S.A."
    case "083":
        BancoNome = "Banco da China Brasil S.A."
    case "707":
        BancoNome = "Banco Daycoval S.A."
    case "456":
        BancoNome = "Banco de Tokyo-Mitsubishi UFJ Brasil S.A."
    case "001":
        BancoNome = "Banco do Brasil S.A."
    case "047":
        BancoNome = "Banco do Estado de Sergipe S.A."
    case "037":
        BancoNome = "Banco do Estado do Pará S.A."
    case "041":
        BancoNome = "Banco do Estado do Rio Grande do Sul S.A."
    case "004":
        BancoNome = "Banco do Nordeste do Brasil S.A."
    case "265":
        BancoNome = "Banco Fator S.A."
    case "224":
        BancoNome = "Banco Fibra S.A."
    case "626":
        BancoNome = "Banco Ficsa S.A."
    case "612":
        BancoNome = "Banco Guanabara S.A."
    case "012":
        BancoNome = "Banco INBURSA de Investimentos S.A."
    case "604":
        BancoNome = "Banco Industrial do Brasil S.A."
    case "653":
        BancoNome = "Banco Indusval S.A."
    case "249":
        BancoNome = "Banco Investcred Unibanco S.A."
    case "184":
        BancoNome = "Banco Itaú BBA S.A."
    case "029":
        BancoNome = "Banco Itaú BMG Consignado S.A."
    case "479":
        BancoNome = "Banco ItaúBank S.A"
    case "376":
        BancoNome = "Banco J. P. Morgan S.A."
    case "074":
        BancoNome = "Banco J. Safra S.A."
    case "217":
        BancoNome = "Banco John Deere S.A."
    case "600":
        BancoNome = "Banco Luso Brasileiro S.A."
    case "389":
        BancoNome = "Banco Mercantil do Brasil S.A."
    case "370":
        BancoNome = "Banco Mizuho do Brasil S.A."
    case "746":
        BancoNome = "Banco Modal S.A."
    case "212":
        BancoNome = "Banco Original S.A."
    case "623":
        BancoNome = "Banco PAN S.A."
    case "611":
        BancoNome = "Banco Paulista S.A."
    case "094":
        BancoNome = "Banco Petra S.A."
    case "643":
        BancoNome = "Banco Pine S.A."
    case "747":
        BancoNome = "Banco Rabobank International Brasil S.A."
    case "633":
        BancoNome = "Banco Rendimento S.A."
    case "120":
        BancoNome = "Banco Rodobens S.A."
    case "422":
        BancoNome = "Banco Safra S.A."
    case "033":
        BancoNome = "Banco Santander (Brasil) S.A."
    case "366":
        BancoNome = "Banco Société Générale Brasil S.A."
    case "464":
        BancoNome = "Banco Sumitomo Mitsui Brasileiro S.A."
    case "082":
        BancoNome = "Banco Topázio S.A."
    case "634":
        BancoNome = "Banco Triângulo S.A."
    case "655":
        BancoNome = "Banco Votorantim S.A."
    case "610":
        BancoNome = "Banco VR S.A."
    case "119":
        BancoNome = "Banco Western Union do Brasil S.A."
    case "021":
        BancoNome = "BANESTES S.A. Banco do Estado do Espírito Santo"
    case "719":
        BancoNome = "Banif-Banco Internacional do Funchal (Brasil)S.A."
    case "755":
        BancoNome = "Bank of America Merrill Lynch Banco Múltiplo S.A."
    case "081":
        BancoNome = "BBN Banco Brasileiro de Negócios S.A."
    case "250":
        BancoNome = "BCV - Banco de Crédito e Varejo S.A."
    case "017":
        BancoNome = "BNY Mellon Banco S.A."
    case "069":
        BancoNome = "BPN Brasil Banco Múltiplo S.A."
    case "125":
        BancoNome = "Brasil Plural S.A. - Banco Múltiplo"
    case "070":
        BancoNome = "BRB - Banco de Brasília S.A."
    case "104":
        BancoNome = "Caixa Econômica Federal"
    case "320":
        BancoNome = "China Construction Bank (Brasil) Banco Múltiplo S.A."
    case "477":
        BancoNome = "Citibank N.A."
    case "487":
        BancoNome = "Deutsche Bank S.A. - Banco Alemão"
    case "064":
        BancoNome = "Goldman Sachs do Brasil Banco Múltiplo S.A."
    case "078":
        BancoNome = "Haitong Banco de Investimento do Brasil S.A."
    case "062":
        BancoNome = "Hipercard Banco Múltiplo S.A."
    case "399":
        BancoNome = "HSBC Bank Brasil S.A. - Banco Múltiplo"
    case "492":
        BancoNome = "ING Bank N.V."
    case "652":
        BancoNome = "Itaú Unibanco Holding S.A."
    case "341":
        BancoNome = "Itaú Unibanco S.A."
    case "488":
        BancoNome = "JPMorgan Chase Bank, National Association"
    case "128":
        BancoNome = "MSB Bank S.A. Banco de Câmbio"
    case "254":
        BancoNome = "Paraná Banco S.A."
    case "751":
        BancoNome = "Scotiabank Brasil S.A. Banco Múltiplo"
    case "118":
        BancoNome = "Standard Chartered Bank (Brasil) S/A–Bco Invest."
    case "129":
        BancoNome = "UBS Brasil Banco de Investimento S.A."
    default:
        BancoNome = "Banco Desconhecido."
        break;
    }
    
    return BancoNome
}