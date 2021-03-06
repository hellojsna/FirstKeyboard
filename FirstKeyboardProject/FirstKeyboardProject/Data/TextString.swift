//
//  TextString.swift
//  FirstKeyboardProject
//
//  Created by 위대연 on 2020/05/20.
//  Edited by Js Na on 2020/06/24.
//  Copyright © 2020 위대연. All rights reserved.
//  Copyright © 2020 Js Na, All rights reserved(edited part only).
//

import UIKit

class TextString {
    static let enKeyText = [
        ["1","2","3","4","5","6","7","8","9","0"],
        ["q","w","e","r","t","y","u","i","o","p"],
        ["a","s","d","f","g","h","j","k","l"],
        ["z","x","c","v","b","n","m"]
    ]

    static let koKeyText = [
        ["1","2","3","4","5","6","7","8","9","0"],
        ["ㅂ","ㅈ","ㄷ","ㄱ","ㅅ","ㅛ","ㅕ","ㅑ","ㅐ","ㅔ"],
        ["ㅁ","ㄴ","ㅇ","ㄹ","ㅎ","ㅗ","ㅓ","ㅏ","ㅣ"],
        ["ㅋ","ㅌ","ㅊ","ㅍ","ㅠ","ㅜ","ㅡ"]
    ]
    static let s390KeyText = [
        ["ᇂ","ᆻ","ᆸ","ㅛ","ㅠ","ㅑ","ㅖ","ㅢ","ㅜ","ㅋ"],
        ["ᆺ","ᆯ","ㅕ","ㅐ","ㅓ","ㄹ","ㄷ","ㅁ","ㅊ","ㅍ"],
        ["ᆼ","ᆫ","ㅣ","ㅏ","ㅡ","ㄴ","ㅇ","ㄱ","ㅈ","ㅂ","ㅌ"],
        ["ᆷ","ᆨ","ㅔ","ㅗ","ㅜ","ㅅ","ㅎ",",",".","ㅗ\u{200B}"]
    ]
    static let optionKeyText = [
        ["","","","","","","","","",""],
        ["+","×","÷","=","%","/","\\","#","[","]"],
        ["@","*","!","~",":",";","^","(",")"],
        ["-","_","'","\"","‚",".","?"]
    ]
    
    enum ButtonKind {
        case ko(Line)
        case en(Line)
        case s390(Line)
        
        enum Line:Int {
            case number = 0
            case l1
            case l2
            case l3
        }
    }
    enum language {
        case ko
        case s390
        case en
    }
    
    static let KeyboardTypeString:[UIReturnKeyType:String] = [
        .continue:"Continue",
        .default:"Return",
        .done:"Done",
        .emergencyCall:"Call",
        .go:"Go",
        .google:"Google",
        .join:"Join",
        .next:"Next",
        .route:"Route",
        .search:"Search",
        .send:"Send",
        .yahoo:"Yahoo"
    ]
    
    static let s390KeyboardButtonText:[ButtonKind.Line:[String]] = [
        .number:s390KeyText[0],
        .l1:s390KeyText[1],//"ㅂ,ㅈ,ㄷ,ㄱ,ㅅ,ㅛ,ㅕ,ㅑ,ㅐ,ㅔ +,×,÷,=,%,/,\\,#,[,]",
        .l2:s390KeyText[2],//"ㅁ,ㄴ,ㅇ,ㄹ,ㅎ,ㅗ,ㅓ,ㅏ,ㅣ @,*,!,~,:,;,^,(,)",
        .l3:s390KeyText[3]//"ㅋ,ㅌ,ㅊ,ㅍ,ㅠ,ㅜ,ㅡ -,_,',\",‚,.,?"
    ]
    static let KoKeyboardButtonText:[ButtonKind.Line:[String]] = [
        .number:koKeyText[0],
        .l1:koKeyText[1],//"ㅂ,ㅈ,ㄷ,ㄱ,ㅅ,ㅛ,ㅕ,ㅑ,ㅐ,ㅔ +,×,÷,=,%,/,\\,#,[,]",
        .l2:koKeyText[2],//"ㅁ,ㄴ,ㅇ,ㄹ,ㅎ,ㅗ,ㅓ,ㅏ,ㅣ @,*,!,~,:,;,^,(,)",
        .l3:koKeyText[3]//"ㅋ,ㅌ,ㅊ,ㅍ,ㅠ,ㅜ,ㅡ -,_,',\",‚,.,?"
    ]
    
    static let EnKeyboardButtonText:[ButtonKind.Line:[String]] = [
        .number:enKeyText[0],//"1,2,3,4,5,6,7,8,9,0 ",
        .l1:enKeyText[1],//"q,w,e,r,t,y,u,i,o,p +,×,÷,=,%,/,\\,#,[,]",
        .l2:enKeyText[2],//"a,s,d,f,g,h,j,k,l @,*,!,~,:,;,^,(,)",
        .l3:enKeyText[3]//"z,x,c,v,b,n,m -,_,',\",‚,.,?"
    ]
    
    static let OptionKeyButtonText:[ButtonKind.Line:[String]] = [
        .number: optionKeyText[0],
        .l1: optionKeyText[1],
        .l2: optionKeyText[2],
        .l3: optionKeyText[3],
    ]
    
    static func getLineText(buttonKind: ButtonKind) -> ([String],[String]){
        switch buttonKind {
        case .ko(.l1): return (KoKeyboardButtonText[.l1]!,OptionKeyButtonText[.l1]!)
        case .ko(.l2): return (KoKeyboardButtonText[.l2]!,OptionKeyButtonText[.l2]!)
        case .ko(.l3): return (KoKeyboardButtonText[.l3]!,OptionKeyButtonText[.l3]!)
        case .ko(.number): return (KoKeyboardButtonText[.number]!,OptionKeyButtonText[.number]!)
        
        case .s390(.l1): return (s390KeyboardButtonText[.l1]!,OptionKeyButtonText[.l1]!)
        case .s390(.l2): return (s390KeyboardButtonText[.l2]!,OptionKeyButtonText[.l2]!)
        case .s390(.l3): return (s390KeyboardButtonText[.l3]!,OptionKeyButtonText[.l3]!)
        case .s390(.number): return (s390KeyboardButtonText[.number]!,OptionKeyButtonText[.number]!)
        
        case .en(.l1): return (EnKeyboardButtonText[.l1]!,OptionKeyButtonText[.l1]!)
        case .en(.l2): return (EnKeyboardButtonText[.l2]!,OptionKeyButtonText[.l2]!)
        case .en(.l3): return (EnKeyboardButtonText[.l3]!,OptionKeyButtonText[.l3]!)
        case .en(.number): return (EnKeyboardButtonText[.number]!,OptionKeyButtonText[.number]!)
        }
    }
}
