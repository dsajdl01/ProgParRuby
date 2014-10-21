def tell_the_truth(options={})
	if options[:profession] ==:lawyer
		'It could be believed that this is almost certainly not false'
	elsif options[:profession] == :IT
		'It clould be deffinetly false'
	else
		true
	end
end

# irb(main):069:0> tell_the_truth
# => true
# irb(main):070:0> tell_the_truth(:profession => :lawyer)
# => "it could be believed that this is almost certainly not false"
# irb(main):071:0> tell_the_truth(:profession => :doctor)
# => true
# irb(main):072:0> tell_the_truth(:profession => :IT)
# => 'It clould be deffinetly false'
