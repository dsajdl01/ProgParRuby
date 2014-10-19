def doX(osname)
	if osname == :Windows
		puts "doXWindows"
	elsif osname == :Linux
		puts "doXLinux"
	elsif osname == :Mac
		puts "doXMax"
	elsif osname == :Ubuntu
        puts "doXUbuntu"
    else
		puts "unknow OS"
	end
end	