.data
	fileName: .space 21
	str: .space 256
	null: .byte '\0'
	message: .asciiz "Please enter your file name:(like file.txt)\n"
	
    zerO: .asciiz "zero"
    ZerO: .asciiz "Zero"
    onE: .asciiz "one"
    OnE: .asciiz "One"
    twO: .asciiz "two"
    TwO: .asciiz "Two"
    threE: .asciiz "three"
    ThreE: .asciiz "Three"
    fouR: .asciiz "four"
    FouR: .asciiz "Four"
    fivE: .asciiz "five"
    FivE: .asciiz "Five"
    siX: .asciiz "six"
    SiX: .asciiz "Six"
    seveN: .asciiz "seven"
    SeveN: .asciiz "Seven"
    eighT: .asciiz "eight"
    EighT: .asciiz "Eight"
    ninE: .asciiz "nine"
    NinE: .asciiz "Nine"
    

.text
	li $v0,4
	la $a0, message
	syscall
	
	li $v0, 8
	la $a0, fileName
	li $a1, 20
	syscall
	
	addi $t4, $zero ,0 
	
filenameClearing:
	la $t5, fileName($t4)
    lb $t6, ($t5)

    beq $t6, '\n' ,back
    addi $t4,$t4,1
    j filenameClearing
    
back:
	lb $t7, null
	sb $t7,fileName($t4)
	j read
	
read:
	# Open file for reading
	li   $v0, 13       # system call for open file
	la   $a0, fileName      # input file name
	li   $a1, 0        # flag for reading
	li   $a2, 0        # mode is ignored
	syscall            # open a file 
	move $s0, $v0      # save the file descriptor 
	# reading from file just opened
	li   $v0, 14       # system call for reading from file
	move $a0, $s0      # file descriptor 
	la   $a1, str   # address of buffer from which to read
	li   $a2,  256     # hardcoded buffer length
	syscall            # read from file
    
    addi $t0, $zero ,0    #index
    addi $t3, $zero ,1    #upper case key
    addi $t8, $zero ,0 	  #two or more digit number key

traverse:  
    la $t1, str($t0)
    lb $t2, ($t1)
    
    beq $t0,1,beginningOfFile
    reset:
    
    beq $t2, '\0' ,end 
    beq $t2, '.', upKey 
    beq $t2, 13 , upKey 
    beq $t2 , '0', zero
    beq $t2 , '1', one
    beq $t2 , '2', two
    beq $t2 , '3', three
    beq $t2 , '4', four
    beq $t2 , '5', five
    beq $t2 , '6', six
    beq $t2 , '7', seven
    beq $t2 , '8', eight
    beq $t2 , '9', nine
    
    jal printCharacter       
    j traverse
    
beginningOfFile:
	li $t3, 0
	j reset
    	
checkThen:
	beq $t2 , '.', upNumberKey
	beq $t2 , '0', upNumberKey
    beq $t2 , '1', upNumberKey
    beq $t2 , '2', upNumberKey
    beq $t2 , '3', upNumberKey
    beq $t2 , '4', upNumberKey
    beq $t2 , '5', upNumberKey
    beq $t2 , '6', upNumberKey
    beq $t2 , '7', upNumberKey
    beq $t2 , '8', upNumberKey
    beq $t2 , '9', upNumberKey
    jr $ra
    
printDigit:
	li $t3, 0
	li $v0,11
	la $a0, ($t2)
	syscall
	addi $t0, $t0, 1
	j traverse
upNumberKey:
	addi $t8, $zero , 1
	j traverse
upKey:
	addi $t3, $zero, 1
	jal printCharacter
	j traverse
zero:
	beq $t8, 1, printDigit
	addi $t0, $t0, 1 
	la $t1, str($t0)
    lb $t2, ($t1)
    addi $t0, $t0, -1
	jal checkThen
	
	beq $t3, 1, Zero
	li $v0, 4
	la $a0, zerO
	syscall
	addi $t0, $t0, 1 
	j traverse
Zero:
	li $v0, 4
	la $a0, ZerO
	syscall
	addi $t0, $t0,1
	li $t3, 0
	j traverse
one:
	beq $t8, 1, printDigit
	addi $t0, $t0, 1 
	la $t1, str($t0)
    lb $t2, ($t1)
    addi $t0, $t0, -1
	jal checkThen
	
	beq $t3, 1, One
	li $v0, 4
	la $a0, onE
	syscall
	addi $t0, $t0, 1 
	j traverse
One:
	li $v0, 4
	la $a0, OnE
	syscall
	addi $t0, $t0,1
	li $t3, 0
	j traverse
two:
	beq $t8, 1, printDigit
	addi $t0, $t0, 1 
	la $t1, str($t0)
    lb $t2, ($t1)
    addi $t0, $t0, -1
	jal checkThen
	
	beq $t3, 1, Two
	li $v0, 4
	la $a0, twO
	syscall
	addi $t0, $t0, 1 
	j traverse
Two:
	li $v0, 4
	la $a0, TwO
	syscall
	addi $t0, $t0,1
	li $t3, 0
	j traverse
three:
	beq $t8, 1, printDigit
	addi $t0, $t0, 1 
	la $t1, str($t0)
    lb $t2, ($t1)
    addi $t0, $t0, -1
	jal checkThen
	
	beq $t3, 1, Three
	li $v0, 4
	la $a0, threE
	syscall
	addi $t0, $t0, 1 
	j traverse
Three:
	li $v0, 4
	la $a0, ThreE
	syscall
	addi $t0, $t0,1
	li $t3, 0
	j traverse
four:
	beq $t8, 1, printDigit
	addi $t0, $t0, 1 
	la $t1, str($t0)
    lb $t2, ($t1)
    addi $t0, $t0, -1
	jal checkThen
	
	beq $t3, 1, Four
	li $v0, 4
	la $a0, fouR
	syscall
	addi $t0, $t0, 1 
	j traverse
Four:
	li $v0, 4
	la $a0, FouR
	syscall
	addi $t0, $t0,1
	li $t3, 0
	j traverse
five:
	beq $t8, 1, printDigit
	addi $t0, $t0, 1 
	la $t1, str($t0)
    lb $t2, ($t1)
    addi $t0, $t0, -1
	jal checkThen
	
	beq $t3, 1, Five
	li $v0, 4
	la $a0, fivE
	syscall
	addi $t0, $t0, 1 
	j traverse
Five:
	li $v0, 4
	la $a0, FivE
	syscall
	addi $t0, $t0,1
	li $t3, 0
	j traverse
six:
	beq $t8, 1, printDigit
	addi $t0, $t0, 1 
	la $t1, str($t0)
    lb $t2, ($t1)
    addi $t0, $t0, -1
	jal checkThen
	
	beq $t3, 1, Six
	li $v0, 4
	la $a0, siX
	syscall
	addi $t0, $t0, 1 
	j traverse
Six:
	li $v0, 4
	la $a0, SiX
	syscall
	addi $t0, $t0,1
	li $t3, 0
	j traverse
seven:
	beq $t8, 1, printDigit
	addi $t0, $t0, 1 
	la $t1, str($t0)
    lb $t2, ($t1)
    addi $t0, $t0, -1
	jal checkThen
	
	beq $t3, 1, Seven
	li $v0, 4
	la $a0, seveN
	syscall
	addi $t0, $t0, 1 
	j traverse
Seven:
	li $v0, 4
	la $a0, SeveN
	syscall
	addi $t0, $t0,1
	li $t3, 0
	j traverse
eight:
	beq $t8, 1, printDigit
	addi $t0, $t0, 1 
	la $t1, str($t0)
    lb $t2, ($t1)
    addi $t0, $t0, -1
	jal checkThen
	
	beq $t3, 1, Eight
	li $v0, 4
	la $a0, eighT
	syscall
	addi $t0, $t0, 1 
	j traverse
Eight:
	li $v0, 4
	la $a0, EighT
	syscall
	addi $t0, $t0,1
	li $t3, 0
	j traverse
nine:
	beq $t8, 1, printDigit
	addi $t0, $t0, 1 
	la $t1, str($t0)
    lb $t2, ($t1)
    addi $t0, $t0, -1
	jal checkThen
	
	beq $t3, 1, Nine
	li $v0, 4
	la $a0, ninE
	syscall
	addi $t0, $t0, 1 
	j traverse
Nine:
	li $v0, 4
	la $a0, NinE
	syscall
	addi $t0, $t0,1
	li $t3, 0
	j traverse
end:  
	# Close the file 
	li   $v0, 16       # system call for close file
	move $a0, $s6      # file descriptor to close
	syscall            # close file
    li $v0 ,10
    syscall
printCharacter:
	li $t8 , 0
	li $v0,11
	la $a0, ($t2)
	syscall
	addi $t0, $t0, 1
	bne $t2, ' ', down1
	dk:
	jr $ra 
down1:
	bne $t2, '.', down2
	j dk
down2:
	bne $t2, 13 , down3
	j dk
down3:
	bne $t2, 10 , downKey
	j dk
downKey:
	li $t3, 0
	j dk
