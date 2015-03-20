LfsrPalindrome:
	add $t0, $a0, $0
	add $t1, $a0, $0
	addiu $t2, $0, 1
	add $v0, $a0, $0

loop:
	lfsr $t1, $t1
	bitpal $t3, $t1
	beq $t2, $t3, palindrome
	beq $t1, $t0, end
	j loop

palindrome:
	add $v0, $t1, $0
	j loop

end:
	jr $ra
