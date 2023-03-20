module main

fn fizzbuzz(num int) {
	for n in 1 .. num + 1 {
		match 0 {
            n % 15 {
				println('FizzBuzz')
			}
			n % 3 {
				println('Fizz')
			}
			n % 5 {
				println('Buzz')
			}
			else {
				println(n)
			}
		}
	}
}
