# bcd_to_binary_verilog_HW
<H2>Introduction</H2>
Here we have two conversions.The first one is BCD to Binary. In this method a simple combination circuit method is used and using five, 4-Bit binary value which is representing five value of BCD value. It is then converted into 16-bit Binary value.
The second one is Binary to BCD. In this a synchronous clock is used to generate 4-Bit shift register, and using Double Dabble method 16-bit Binary value is converted into its BCD value which is represented by 5, 4-bit binary value.

<h2>Algorithms</h2>
<h4>BCD TO BINARY</h4>
Binary Coded Decimal format is a binary encoding of decimal numbers that represents each decimal digit by a fixed binary number. For example, 42 is represented in BCD format by the binary representations of 4 and 2, as shown above. The BCD format is common in electronic systems where numeric digits are displayed, as well as in systems where the rounding and conversion errors introduced by binary floating-point representation and arithmetic are undesirable.</br>
PROPOSED ALGORITHM </br>
Step 1. Start </br>
Step 2. Take a 20-Bit input where each 4-Bit represent a decimal value ( 0 – 15 )</br>.
Step 3. Declare a 16-bit output register.</br>
Step 4. Declare 5, 16-Bit register to store and calculate the respective values.</br>
Step 2. Take the “10nth Thousands” BCD digit and multiply it by 10000.</br>
Step 3. Take the “Thousands” BCD digit and multiply it by 1000.</br>
Step 4. Take the “Hundreds” BCD digit and multiply it by 100.</br>
Step 5. Take the “Tens” BCD digit and multiply it by 10.</br>
Step 6. Add the “ones” digit to it.</br>

<h4>BINARY TO BCD</h4>
The double dabble algorithm is used to convert binary numbers into binary-coded decimal (BCD) notation. It is also known as the shift-and-add-3 algorithm, and can be implemented using a small number of gates in computer hardware, but at the expense of high latency.
In computing and electronic systems, binary-coded decimal (BCD) is a class of binary encodings of decimal numbers where each decimal digit is represented by a fixed number of bits, usually four or eight. Special bit patterns are sometimes used for a sign or for other indications (e.g., error or overflow).
In general, there are not too many algorithms for conversion of a Binary value to a BCD value, and almost all the rest of the algorithm uses the basics of DOUBLE DABBLE method.</br>
PROPOSED ALGORITHM</br>
Step 1. Start</br>
Step 2. Take a 16 – Bit binary input and store the value.</br>
Step 3. Declare 5 variables which will be storing the unit place, the tenth, the hundred, the thousand, and the 10 thousand places, which will be used to display appropriate output.</br>
Step 4. A 20-Bit binary register variable is also declared to display the output</br>
Step 5.  Shift the binary number left one bit.</br>
 Step 6. If 8 shifts have taken place, the BCD number is in the Hundreds, Tens, and Units column.</br></br>
 Step 7. If the binary value in any of the BCD columns is 5 or greater, add 3 to that value in that BCD col</br>umn. </br>
Step 8. Go to 5.</br>
Step 9. End</br>

