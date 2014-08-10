#!/bin/ruby

def decode(encStr)
        if encStr == 'kljJJ324hjkS_'
                return 848662
        else
                return nil
        end
end

def findStr( str, n = 2 ** str.length )

        if decode(str)
                puts "String: #{str}"
                exit
        end

        arry = str.split("")

        if n > 0
                arry.each_with_index.map {|c, i|
                        arry[i] = c.swapcase
                        findStr(arry.join, n -= 1)
               }
        end
end


findStr('ABC')
#findStr('kljjj324hjks_')
 
