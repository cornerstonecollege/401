//
//  main.swift
//  AvoidingStrongReferenceCycles
//
//  Created by Boyoung on 2016-09-29.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

class Husband
{
    weak var spouse:Husband?  // avoiding strong reference cycle
}

class Wife
{
    weak var spouse:Wife? // avoiding strong reference cycle
}


class CreditCard
{
    unowned var user: UserAccount
    // unowned (it is just like weak) cannot be optional.
    // do not need to unwrap it
    
    init(user: UserAccount)
    {
        self.user = user
    }
}

class UserAccount
{
    weak var creditCard: CreditCard?
}
