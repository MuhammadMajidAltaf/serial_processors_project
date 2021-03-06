-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity agito_shift is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    operands_V : IN STD_LOGIC_VECTOR (26 downto 0);
    right_flag : IN STD_LOGIC;
    arithmetic_flag : IN STD_LOGIC;
    registers_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    registers_V_ce0 : OUT STD_LOGIC;
    registers_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    registers_V_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    registers_V_ce1 : OUT STD_LOGIC;
    registers_V_we1 : OUT STD_LOGIC;
    registers_V_d1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of agito_shift is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv30_0 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000000";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_23 : BOOLEAN;
    signal r_V_reg_254 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_3_fu_140_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_3_reg_259 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_57 : BOOLEAN;
    signal input_V_reg_269 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_65 : BOOLEAN;
    signal tmp_2_reg_275 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_76 : BOOLEAN;
    signal sel_tmp2_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp2_reg_285 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_fu_167_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_bdd_87 : BOOLEAN;
    signal p_058_1_fu_228_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_1_reg_109 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_119 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_fu_144_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_9_fu_244_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sel_tmp2_fu_156_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp2_fu_156_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_6_fu_179_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_7_fu_193_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_5_fu_206_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_fu_200_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal sel_tmp1_fu_221_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_5_fu_189_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_7_fu_173_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_4_fu_213_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal sel_tmp1_fu_221_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_2_fu_235_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- i_reg_119 assign process. --
    i_reg_119_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (exitcond_fu_162_p2 = ap_const_lv1_0))) then 
                i_reg_119 <= i_1_fu_167_p2;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
                i_reg_119 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    -- p_1_reg_109 assign process. --
    p_1_reg_109_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (exitcond_fu_162_p2 = ap_const_lv1_0))) then 
                p_1_reg_109 <= p_058_1_fu_228_p3;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
                p_1_reg_109 <= input_V_reg_269;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                input_V_reg_269 <= registers_V_q0;
                tmp_2_reg_275 <= registers_V_q0(30 downto 30);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then
                r_V_reg_254 <= operands_V(17 downto 9);
                tmp_3_reg_259 <= tmp_3_fu_140_p1;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                sel_tmp2_reg_285 <= sel_tmp2_fu_156_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond_fu_162_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                ap_NS_fsm <= ap_ST_st3_fsm_2;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                if (not((exitcond_fu_162_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st5_fsm_4, exitcond_fu_162_p2)
    begin
        if (((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((exitcond_fu_162_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4, exitcond_fu_162_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((exitcond_fu_162_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_23 assign process. --
    ap_sig_bdd_23_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_23 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_57 assign process. --
    ap_sig_bdd_57_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_57 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_65 assign process. --
    ap_sig_bdd_65_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_65 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_76 assign process. --
    ap_sig_bdd_76_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_76 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_87 assign process. --
    ap_sig_bdd_87_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_87 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_23)
    begin
        if (ap_sig_bdd_23) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_57)
    begin
        if (ap_sig_bdd_57) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_65)
    begin
        if (ap_sig_bdd_65) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_76)
    begin
        if (ap_sig_bdd_76) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_4 assign process. --
    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_bdd_87)
    begin
        if (ap_sig_bdd_87) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_162_p2 <= "1" when (i_reg_119 = tmp_3_reg_259) else "0";
    i_1_fu_167_p2 <= std_logic_vector(unsigned(i_reg_119) + unsigned(ap_const_lv9_1));
    p_058_1_fu_228_p3 <= 
        r_V_4_fu_213_p3 when (sel_tmp2_reg_285(0) = '1') else 
        sel_tmp1_fu_221_p3;
    r_V_2_fu_235_p4 <= operands_V(26 downto 18);
    r_V_4_fu_213_p3 <= (tmp_5_fu_206_p3 & tmp_8_fu_200_p2);
    r_V_5_fu_189_p1 <= std_logic_vector(resize(unsigned(r_V_6_fu_179_p4),32));
    r_V_6_fu_179_p4 <= p_1_reg_109(31 downto 1);
    r_V_7_fu_173_p2 <= std_logic_vector(shift_left(unsigned(p_1_reg_109),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    registers_V_address0 <= tmp_fu_144_p1(4 - 1 downto 0);
    registers_V_address1 <= tmp_9_fu_244_p1(4 - 1 downto 0);

    -- registers_V_ce0 assign process. --
    registers_V_ce0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            registers_V_ce0 <= ap_const_logic_1;
        else 
            registers_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    -- registers_V_ce1 assign process. --
    registers_V_ce1_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            registers_V_ce1 <= ap_const_logic_1;
        else 
            registers_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    registers_V_d1 <= p_1_reg_109;

    -- registers_V_we1 assign process. --
    registers_V_we1_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4, exitcond_fu_162_p2)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((exitcond_fu_162_p2 = ap_const_lv1_0))))) then 
            registers_V_we1 <= ap_const_logic_1;
        else 
            registers_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    sel_tmp1_fu_221_p0 <= (0=>right_flag, others=>'-');
    sel_tmp1_fu_221_p3 <= 
        r_V_5_fu_189_p1 when (sel_tmp1_fu_221_p0(0) = '1') else 
        r_V_7_fu_173_p2;
    sel_tmp2_fu_156_p0 <= (0=>right_flag, others=>'-');
    sel_tmp2_fu_156_p1 <= (0=>arithmetic_flag, others=>'-');
    sel_tmp2_fu_156_p2 <= (sel_tmp2_fu_156_p0 and sel_tmp2_fu_156_p1);
    tmp_3_fu_140_p1 <= operands_V(9 - 1 downto 0);
    tmp_5_fu_206_p3 <= input_V_reg_269(31 downto 31);
    tmp_7_fu_193_p3 <= (tmp_2_reg_275 & ap_const_lv30_0);
    tmp_8_fu_200_p2 <= (tmp_7_fu_193_p3 or r_V_6_fu_179_p4);
    tmp_9_fu_244_p1 <= std_logic_vector(resize(unsigned(r_V_2_fu_235_p4),64));
    tmp_fu_144_p1 <= std_logic_vector(resize(unsigned(r_V_reg_254),64));
end behav;
