//
//  main.swift
//  AvoidingStrongReferenceCycles
//
//  Created by Luiz on 2016-09-29.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation


class Husband
{
    weak var spouse:Wife? // avoiding Strong Reference Cycle
}

class Wife
{
    weak var spouse:Husband? // avoiding Strong Reference Cycle
}

class CreditCard
{
    unowned var user:UserAccount // unowned (it is just like `weak`) cannot be optional
                                 // do not need to unwrap it
    
    init(user:UserAccount)
    {
        self.user = user
    }
}

class UserAccount
{
    weak var creditCard:CreditCard?
}

