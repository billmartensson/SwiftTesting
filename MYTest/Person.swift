//
//  Person.swift
//  MYTest
//
//  Created by Bill Martensson on 2020-12-02.
//

import Foundation

class Person {
    
    /*
     
     */
    
    /**
        Nu ska kolla om det är jämt

        - author:
            Bill Kodare
     
        - returns:
        Text så som "Ojämn", "Jämn" eller "FEL"

        - parameters:
            - numberText: Texten som ska kollas.


    */
    func oddEven(numberText : String) -> String
    {
        // "235" -> "Ojämn"
        // "82" -> "Jämn"
        // "Banan" -> "FEL"
        
        let thenumber = Int(numberText)
        
        if(thenumber == nil)
        {
            return "FEL"
        }
        
        if(thenumber! > 1000)
        {
            return "FÖR STORT TAL"
        }
        if(thenumber! < 10)
        {
            return "FÖR LITET TAL"
        }
        
        // 9 % 2 ..... 9/2=4.5  4*2=8  9-8=1
        // 8 % 2 ..... 8/2=4  4*2=8   8-8=0
        
        if(thenumber! % 2 == 0)
        {
            return "Jämn"
        }
        
        
        return "Ojämn"
    }
    
    
}
