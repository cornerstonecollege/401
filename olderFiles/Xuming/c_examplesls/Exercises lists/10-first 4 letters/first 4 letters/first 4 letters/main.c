//
//  main.c
//  first 4 letters
//
//  Created by Nicholas on 2016-09-02.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include <stdio.h>

public static class StringExtensions
{
    public static string Right(this string str, int length)
    {
        return str.Substring(str.Length - length, length);
    }
    
    public static string MyLast(this string str, int length)
    {
        if (str == null)
            return null;
        else if (str.Length >= length)
            return str.Substring(str.Length - length, length);
        else
            return str;
    }
}