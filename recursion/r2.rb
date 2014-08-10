def decode(encStr)
        if encStr == 'kljJJ324hjks_'
                return 848662
        else
                return nil
    end
end

def findStr(str, index = str.length - 1, n = 2 ** str.length )
	puts "Count: #{index}"
        puts "String: #{str}"
	
        if decode(str)
                puts "String: #{str}"
                exit
        end
        arry = str.split("")
	puts "Index: #{arry[index]}"
	if index >= 0
		arry[index] = arry[index].swapcase
		findStr(arry.join, index -= 1)
	else
		index = str.length - 1
		findStr(arry.join, index)
	end
end
puts findStr('kljjj324hjks_')
