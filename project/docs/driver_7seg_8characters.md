# driver_7seg_8characters.vhd

0.  Component in/out:

```vhdl
    entity driver_7seg_8characters is
    port(
        clk     : in  std_logic;                        -- Main clock
        reset   : in  std_logic;                        -- synchronous reset
        data0_i : in  std_logic_vector(5 downto 0);     -- 0. character
        data1_i : in  std_logic_vector(5 downto 0);     -- 1. character
        data2_i : in  std_logic_vector(5 downto 0);     -- 2. character
        data3_i : in  std_logic_vector(5 downto 0);     -- 3. character
        data4_i : in  std_logic_vector(5 downto 0);     -- 4. character
        data5_i : in  std_logic_vector(5 downto 0);     -- 5. character
        data6_i : in  std_logic_vector(5 downto 0);     -- 6. character
        data7_i : in  std_logic_vector(5 downto 0);     -- 7. character
        seg_o   : out std_logic_vector(6 downto 0);     -- 7seg output
        dig_o   : out std_logic_vector(7 downto 0)      -- select which character is rewritten
    );
    end entity driver_7seg_8characters;
```
1.  Component take 8 character input a send it to 7seg display

2. Simulation, including reports.

   ![Simulation screenshot](../images/)

3. Link to your public EDA Playground example:

   driver_7seg_8characters.vhd: [https://www.edaplayground.com/x/RxbT](https://www.edaplayground.com/x/RxbT)
