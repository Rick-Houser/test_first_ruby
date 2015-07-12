def measure(n=1)
	before = Time.now
	n.times { yield }
	(Time.now - before)/n
end