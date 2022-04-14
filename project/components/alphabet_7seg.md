# alphabet_7seg.vhd notes

1.  Component can transcode maximum of 64 (2^6) characters according to following table, to a 7 segment common anode display.

   ![7seg_commonAnode_display](../Images/Common-Anode-7-Segment-Display-Internal-Working.gif)
   > The image above was used from website: [How Seven Segment Display Works & Interface it with Arduino](https://lastminuteengineers.com/seven-segment-arduino-tutorial/).
   >

   ![Used_font](../Images/7-seg-Alphabet.jpg)
   > The image above was used from website: [Longest Seven Segment Word](https://codegolf.stackexchange.com/questions/173837/longest-seven-segment-word).
   >

    Completed decoder truth table for **common anode** 7-segment display.

   | **Character** | **Inputs** | **A** | **B** | **C** | **D** | **E** | **F** | **G** |
   | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 000000 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
   | 1 | 000001 | 1 | 0 | 0 | 1 | 1 | 1 | 1 |
   | 2 | 000010 |   |   |   |   |   |   |   |
   | 3 | 000011 |   |   |   |   |   |   |   |
   | 4 | 000100 |   |   |   |   |   |   |   |
   | 5 | 000101 |   |   |   |   |   |   |   |
   | 6 | 000110 |   |   |   |   |   |   |   |
   | 7 | 000111 |   |   |   |   |   |   |   |
   | 8 | 001000 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
   | 9 | 001001 |   |   |   |   |   |   |   |
   | A | 001010 |   |   |   |   |   |   |   |
   | b | 001011 |   |   |   |   |   |   |   |
   | C | 001100 |   |   |   |   |   |   |   |
   | d | 001101 |   |   |   |   |   |   |   |
   | E | 001110 | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
   | F | 001111 | 0 | 1 | 1 | 1 | 0 | 0 | 0 |
   | G | 010000 |   |   |   |   |   |   |   |
   | h | 010001 |   |   |   |   |   |   |   |
   | I | 010010 |   |   |   |   |   |   |   |
   | J | 010011 |   |   |   |   |   |   |   |
   | k | 010100 |   |   |   |   |   |   |   |
   | L | 010101 |   |   |   |   |   |   |   |
   | M | 010110 |   |   |   |   |   |   |   |
   | n | 010111 |   |   |   |   |   |   |   |
   | O | 011000 |   |   |   |   |   |   |   |
   | P | 011001 |   |   |   |   |   |   |   |
   | q | 011010 |   |   |   |   |   |   |   |
   | r | 011011 |   |   |   |   |   |   |   |
   | S | 011100 |   |   |   |   |   |   |   |
   | t | 011101 |   |   |   |   |   |   |   |
   | U | 011110 |   |   |   |   |   |   |   |
   | v | 011111 |   |   |   |   |   |   |   |
   | w | 100000 |   |   |   |   |   |   |   |
   | X | 100001 |   |   |   |   |   |   |   |
   | y | 100010 |   |   |   |   |   |   |   |
   | Z | 100011 |   |   |   |   |   |   |   |
   |   | 100100 |   |   |   |   |   |   |   |


0. Complete the truth table for 2-bit *Identity comparator* (B equals A), and two *Magnitude comparators* (B is greater than A, B is less than A). Note that, such a digital device has four inputs and three outputs/functions.

   | **Dec. equivalent** | **B[1:0]** | **A[1:0]** | **B is greater than A** | **B equals A** | **B is less than A** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   |  0 | 0 0 | 0 0 | 0 | 1 | 0 |
   |  1 | 0 0 | 0 1 | 0 | 0 | 1 |
   |  2 | 0 0 | 1 0 | 0 | 0 | 1 |
   |  3 | 0 0 | 1 1 | 0 | 0 | 1 |
   |  4 | 0 1 | 0 0 | 1 | 0 | 0 |
   |  5 | 0 1 | 0 1 | 0 | 1 | 0 |
   |  6 | 0 1 | 1 0 | 0 | 0 | 1 |
   |  7 | 0 1 | 1 1 | 0 | 0 | 1 |
   |  8 | 1 0 | 0 0 | 1 | 0 | 0 |
   |  9 | 1 0 | 0 1 | 1 | 0 | 0 |
   | 10 | 1 0 | 1 0 | 0 | 1 | 0 |
   | 11 | 1 0 | 1 1 | 0 | 0 | 1 |
   | 12 | 1 1 | 0 0 | 1 | 0 | 0 |
   | 13 | 1 1 | 0 1 | 1 | 0 | 0 |
   | 14 | 1 1 | 1 0 | 1 | 0 | 0 |
   | 15 | 1 1 | 1 1 | 0 | 1 | 0 |

<a name="part0"></a>

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![K-maps](images/kmap_greater.png)

   Less than:

   ![K-maps](images/kmap_less.png)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](images/equation.png)

   \begin{align*}
   greater_{min}^{SoP} =&~ (B_{1}\cdot \overline{A_{1}})+(B_{0}\cdot \overline{A_{0}}\cdot \overline{A_{1}})+(B_{0}\cdot{B_{1}}\cdot \overline{A_{0}})\\
   less_{min}^{PoS} =&~ (\overline{B_{0}}+ {A_{1}})\cdot(\overline{B_{1}}+ {A_{0}})\cdot(B_{1}+{A_{0}}+{A_{1}})\cdot(B_{0}\cdot\overline{B_{1}}\cdot \overline{A_{0}})\\
   \end{align*} 

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: xxxx71

```vhdl
    p_stimulus : process
    begin
      -- Report a note at the beginning of stimulus process
      report "Stimulus process for 4-bit binary comparator started" severity note;
		------------------------------------------------------------

        -- Test case for last 2 ID digits --> xxxx71...
        s_d <= "0111"; s_c <= "0001"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_D_greater_C = '1') and
                (s_D_equals_C  = '0') and
                (s_D_less_C    = '0'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Id input combination 0111, 0001 FAILED" severity error; 

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait; -- Data generation process is suspended forever
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![Test console screenshot](images/test_console.png)

3. Link to your public EDA Playground example:

   2bit comparator: [https://www.edaplayground.com/x/CsxM](https://www.edaplayground.com/x/CsxM)

   4bit comparator: [https://www.edaplayground.com/x/TzCa](https://www.edaplayground.com/x/TzCa)

   