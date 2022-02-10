//
//  main.swift
//  funcCalismasi
//
//  Created by Arın Okşaş on 10.02.2022.
//
//Elimizde bulunan puan listesine göre bu listedeki en büyük, en küçük ve toplam puanların değerlerini hesaplatıp kullanıcıya gösteren fonsiyon

import Foundation

func puanHesapla1(puanlar : [Int])->(ek : Int, eb : Int, toplam : Int){
    var ek = puanlar[0]
    var eb = puanlar[0]
    var toplam = 0
    for x in puanlar{
        if x < ek{
            ek = x
        }
        else if x > eb{
            eb = x
        }
        toplam += x
    }
    return (ek,eb,toplam)
}
let sonuc = puanHesapla1(puanlar: [23,54,12,76,34,9,3,5,2,87,1,5,9,3,54])
print("En düşük: \(sonuc.ek)\nEn büyük: \(sonuc.eb)\nToplam: \(sonuc.toplam)")


//2. Kullanım şekli (Elimizde hazır liste yoksa ve birden fazla değer varsa bu şekilde kullanılabilir)
func puanHesapla2(puanlar : Int...)->(ek : Int, eb : Int, toplam : Int){
    var ek = puanlar[0]
    var eb = puanlar[0]
    var toplam = 0
    for x in puanlar{
        if x < ek{
            ek = x
        }
        else if x > eb{
            eb = x
        }
        toplam += x
    }
    return (ek,eb,toplam)
}
let sonuc2 = puanHesapla2(puanlar: 23,54,12,76,34,9,3,5,2,87,1,5,9,3,54)
print("--------------\nEn düşük: \(sonuc2.ek)\nEn büyük: \(sonuc2.eb)\nToplam: \(sonuc2.toplam)")




