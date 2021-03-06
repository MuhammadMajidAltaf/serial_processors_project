-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kuuga is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    output_loc : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of kuuga is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "kuuga,hls_ip_2015_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7vx485tffg1761-2,HLS_INPUT_CLOCK=1.950000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.950000,HLS_SYN_LAT=996,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=407,HLS_SYN_LUT=263}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (17 downto 0) := "000000000001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (17 downto 0) := "000000000010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (17 downto 0) := "000000000100000000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (17 downto 0) := "000000001000000000";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (17 downto 0) := "000000010000000000";
    constant ap_ST_st12_fsm_11 : STD_LOGIC_VECTOR (17 downto 0) := "000000100000000000";
    constant ap_ST_st13_fsm_12 : STD_LOGIC_VECTOR (17 downto 0) := "000001000000000000";
    constant ap_ST_st14_fsm_13 : STD_LOGIC_VECTOR (17 downto 0) := "000010000000000000";
    constant ap_ST_st15_fsm_14 : STD_LOGIC_VECTOR (17 downto 0) := "000100000000000000";
    constant ap_ST_st16_fsm_15 : STD_LOGIC_VECTOR (17 downto 0) := "001000000000000000";
    constant ap_ST_st17_fsm_16 : STD_LOGIC_VECTOR (17 downto 0) := "010000000000000000";
    constant ap_ST_st18_fsm_17 : STD_LOGIC_VECTOR (17 downto 0) := "100000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_34 : BOOLEAN;
    signal zero_flag : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal memory_V_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal memory_V_ce0 : STD_LOGIC;
    signal memory_V_we0 : STD_LOGIC;
    signal memory_V_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal memory_V_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal inst_V_reg_256 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_60 : BOOLEAN;
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_69 : BOOLEAN;
    signal b_V_reg_269 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_bdd_78 : BOOLEAN;
    signal tmp_3_fu_153_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_V_reg_274 : STD_LOGIC_VECTOR (9 downto 0);
    signal memory_V_addr_3_reg_289 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_bdd_98 : BOOLEAN;
    signal m_a_V_reg_294 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st7_fsm_6 : STD_LOGIC;
    signal ap_sig_bdd_106 : BOOLEAN;
    signal m_b_V_reg_299 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st8_fsm_7 : STD_LOGIC;
    signal ap_sig_bdd_114 : BOOLEAN;
    signal grp_kuuga_bit_serial_add_fu_126_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal check_V_reg_304 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st10_fsm_9 : STD_LOGIC;
    signal ap_sig_bdd_123 : BOOLEAN;
    signal grp_kuuga_bit_serial_add_fu_126_ap_done : STD_LOGIC;
    signal tmp_4_reg_309 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_i_fu_212_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_i_reg_314 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st11_fsm_10 : STD_LOGIC;
    signal ap_sig_bdd_138 : BOOLEAN;
    signal tmp_5_i_fu_224_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_i_reg_319 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st12_fsm_11 : STD_LOGIC;
    signal ap_sig_bdd_147 : BOOLEAN;
    signal pc_V_load_reg_323 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st14_fsm_13 : STD_LOGIC;
    signal ap_sig_bdd_161 : BOOLEAN;
    signal ap_sig_cseq_ST_st16_fsm_15 : STD_LOGIC;
    signal ap_sig_bdd_169 : BOOLEAN;
    signal grp_kuuga_bit_serial_add_fu_126_ap_start : STD_LOGIC;
    signal grp_kuuga_bit_serial_add_fu_126_ap_idle : STD_LOGIC;
    signal grp_kuuga_bit_serial_add_fu_126_ap_ready : STD_LOGIC;
    signal grp_kuuga_bit_serial_add_fu_126_arg1_V : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_kuuga_bit_serial_add_fu_126_arg2_V : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_kuuga_bit_serial_add_fu_126_sub_flag : STD_LOGIC;
    signal grp_kuuga_bit_serial_add_fu_126_zero_flag : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_kuuga_bit_serial_add_fu_126_zero_flag_ap_vld : STD_LOGIC;
    signal p_Val2_1_reg_117 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_kuuga_bit_serial_add_fu_126_ap_start_ap_start_reg : STD_LOGIC := '0';
    signal ap_sig_cseq_ST_st9_fsm_8 : STD_LOGIC;
    signal ap_sig_bdd_190 : BOOLEAN;
    signal ap_sig_cseq_ST_st13_fsm_12 : STD_LOGIC;
    signal ap_sig_bdd_198 : BOOLEAN;
    signal tmp_i_fu_187_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_192_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_i_fu_196_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_243_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal pc_V_fu_70 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_i_fu_230_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_237 : BOOLEAN;
    signal ap_sig_cseq_ST_st17_fsm_16 : STD_LOGIC;
    signal ap_sig_bdd_250 : BOOLEAN;
    signal ap_sig_cseq_ST_st18_fsm_17 : STD_LOGIC;
    signal ap_sig_bdd_258 : BOOLEAN;
    signal ap_sig_cseq_ST_st15_fsm_14 : STD_LOGIC;
    signal ap_sig_bdd_268 : BOOLEAN;
    signal a_V_fu_157_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_4_i_fu_217_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (17 downto 0);

    component kuuga_bit_serial_add IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        arg1_V : IN STD_LOGIC_VECTOR (31 downto 0);
        arg2_V : IN STD_LOGIC_VECTOR (31 downto 0);
        sub_flag : IN STD_LOGIC;
        zero_flag : OUT STD_LOGIC_VECTOR (0 downto 0);
        zero_flag_ap_vld : OUT STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component kuuga_memory_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    memory_V_U : component kuuga_memory_V
    generic map (
        DataWidth => 32,
        AddressRange => 1000,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => memory_V_address0,
        ce0 => memory_V_ce0,
        we0 => memory_V_we0,
        d0 => memory_V_d0,
        q0 => memory_V_q0);

    grp_kuuga_bit_serial_add_fu_126 : component kuuga_bit_serial_add
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_kuuga_bit_serial_add_fu_126_ap_start,
        ap_done => grp_kuuga_bit_serial_add_fu_126_ap_done,
        ap_idle => grp_kuuga_bit_serial_add_fu_126_ap_idle,
        ap_ready => grp_kuuga_bit_serial_add_fu_126_ap_ready,
        arg1_V => grp_kuuga_bit_serial_add_fu_126_arg1_V,
        arg2_V => grp_kuuga_bit_serial_add_fu_126_arg2_V,
        sub_flag => grp_kuuga_bit_serial_add_fu_126_sub_flag,
        zero_flag => grp_kuuga_bit_serial_add_fu_126_zero_flag,
        zero_flag_ap_vld => grp_kuuga_bit_serial_add_fu_126_zero_flag_ap_vld,
        ap_return => grp_kuuga_bit_serial_add_fu_126_ap_return);





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


    -- grp_kuuga_bit_serial_add_fu_126_ap_start_ap_start_reg assign process. --
    grp_kuuga_bit_serial_add_fu_126_ap_start_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_kuuga_bit_serial_add_fu_126_ap_start_ap_start_reg <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11) and not((ap_const_lv1_0 = tmp_5_i_fu_224_p2))) or (ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8))) then 
                    grp_kuuga_bit_serial_add_fu_126_ap_start_ap_start_reg <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = grp_kuuga_bit_serial_add_fu_126_ap_ready)) then 
                    grp_kuuga_bit_serial_add_fu_126_ap_start_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- p_Val2_1_reg_117 assign process. --
    p_Val2_1_reg_117_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15)) then 
                p_Val2_1_reg_117 <= memory_V_q0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
                p_Val2_1_reg_117 <= inst_V_reg_256;
            end if; 
        end if;
    end process;

    -- pc_V_fu_70 assign process. --
    pc_V_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st13_fsm_12) and not((ap_const_lv1_0 = tmp_5_i_reg_319)) and not(((ap_const_logic_0 = grp_kuuga_bit_serial_add_fu_126_ap_done) and not((ap_const_lv1_0 = tmp_5_i_reg_319)))))) then 
                pc_V_fu_70 <= grp_kuuga_bit_serial_add_fu_126_ap_return;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11) and (ap_const_lv1_0 = tmp_5_i_fu_224_p2))) then 
                pc_V_fu_70 <= tmp_6_i_fu_230_p1;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                pc_V_fu_70 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- zero_flag assign process. --
    zero_flag_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st14_fsm_13) or ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0))))) then 
                zero_flag <= ap_const_lv1_0;
            elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8) and (ap_const_logic_1 = grp_kuuga_bit_serial_add_fu_126_zero_flag_ap_vld)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9) and (ap_const_logic_1 = grp_kuuga_bit_serial_add_fu_126_zero_flag_ap_vld)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11) and not((ap_const_lv1_0 = tmp_5_i_fu_224_p2)) and (ap_const_logic_1 = grp_kuuga_bit_serial_add_fu_126_zero_flag_ap_vld)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st13_fsm_12) and not((ap_const_lv1_0 = tmp_5_i_reg_319)) and (ap_const_logic_1 = grp_kuuga_bit_serial_add_fu_126_zero_flag_ap_vld)))) then 
                zero_flag <= grp_kuuga_bit_serial_add_fu_126_zero_flag;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = tmp_3_fu_153_p1))) then
                b_V_reg_269 <= p_Val2_1_reg_117(21 downto 12);
                c_V_reg_274 <= p_Val2_1_reg_117(11 downto 2);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9) and not((ap_const_logic_0 = grp_kuuga_bit_serial_add_fu_126_ap_done)))) then
                check_V_reg_304 <= grp_kuuga_bit_serial_add_fu_126_ap_return;
                tmp_4_reg_309 <= grp_kuuga_bit_serial_add_fu_126_ap_return(31 downto 31);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                inst_V_reg_256 <= memory_V_q0;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6)) then
                m_a_V_reg_294 <= memory_V_q0;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7)) then
                m_b_V_reg_299 <= memory_V_q0;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then
                memory_V_addr_3_reg_289 <= tmp_1_i_fu_196_p1(10 - 1 downto 0);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11) and not((ap_const_lv1_0 = tmp_5_i_fu_224_p2)))) then
                pc_V_load_reg_323 <= pc_V_fu_70;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_10)) then
                tmp_2_i_reg_314 <= tmp_2_i_fu_212_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st12_fsm_11)) then
                tmp_5_i_reg_319 <= tmp_5_i_fu_224_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, tmp_3_fu_153_p1, grp_kuuga_bit_serial_add_fu_126_ap_done, tmp_5_i_reg_319)
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
                if (not((ap_const_lv1_0 = tmp_3_fu_153_p1))) then
                    ap_NS_fsm <= ap_ST_st17_fsm_16;
                else
                    ap_NS_fsm <= ap_ST_st6_fsm_5;
                end if;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st9_fsm_8;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st10_fsm_9 => 
                if (not((ap_const_logic_0 = grp_kuuga_bit_serial_add_fu_126_ap_done))) then
                    ap_NS_fsm <= ap_ST_st11_fsm_10;
                else
                    ap_NS_fsm <= ap_ST_st10_fsm_9;
                end if;
            when ap_ST_st11_fsm_10 => 
                ap_NS_fsm <= ap_ST_st12_fsm_11;
            when ap_ST_st12_fsm_11 => 
                ap_NS_fsm <= ap_ST_st13_fsm_12;
            when ap_ST_st13_fsm_12 => 
                if (not(((ap_const_logic_0 = grp_kuuga_bit_serial_add_fu_126_ap_done) and not((ap_const_lv1_0 = tmp_5_i_reg_319))))) then
                    ap_NS_fsm <= ap_ST_st14_fsm_13;
                else
                    ap_NS_fsm <= ap_ST_st13_fsm_12;
                end if;
            when ap_ST_st14_fsm_13 => 
                ap_NS_fsm <= ap_ST_st15_fsm_14;
            when ap_ST_st15_fsm_14 => 
                ap_NS_fsm <= ap_ST_st16_fsm_15;
            when ap_ST_st16_fsm_15 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st17_fsm_16 => 
                ap_NS_fsm <= ap_ST_st18_fsm_17;
            when ap_ST_st18_fsm_17 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    a_V_fu_157_p4 <= p_Val2_1_reg_117(31 downto 22);

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_sig_cseq_ST_st18_fsm_17)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st18_fsm_17)) then 
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
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st18_fsm_17)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st18_fsm_17)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= memory_V_q0;

    -- ap_sig_bdd_106 assign process. --
    ap_sig_bdd_106_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_106 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    -- ap_sig_bdd_114 assign process. --
    ap_sig_bdd_114_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_114 <= (ap_const_lv1_1 = ap_CS_fsm(7 downto 7));
    end process;


    -- ap_sig_bdd_123 assign process. --
    ap_sig_bdd_123_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_123 <= (ap_const_lv1_1 = ap_CS_fsm(9 downto 9));
    end process;


    -- ap_sig_bdd_138 assign process. --
    ap_sig_bdd_138_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_138 <= (ap_const_lv1_1 = ap_CS_fsm(10 downto 10));
    end process;


    -- ap_sig_bdd_147 assign process. --
    ap_sig_bdd_147_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_147 <= (ap_const_lv1_1 = ap_CS_fsm(11 downto 11));
    end process;


    -- ap_sig_bdd_161 assign process. --
    ap_sig_bdd_161_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_161 <= (ap_const_lv1_1 = ap_CS_fsm(13 downto 13));
    end process;


    -- ap_sig_bdd_169 assign process. --
    ap_sig_bdd_169_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_169 <= (ap_const_lv1_1 = ap_CS_fsm(15 downto 15));
    end process;


    -- ap_sig_bdd_190 assign process. --
    ap_sig_bdd_190_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_190 <= (ap_const_lv1_1 = ap_CS_fsm(8 downto 8));
    end process;


    -- ap_sig_bdd_198 assign process. --
    ap_sig_bdd_198_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_198 <= (ap_const_lv1_1 = ap_CS_fsm(12 downto 12));
    end process;


    -- ap_sig_bdd_237 assign process. --
    ap_sig_bdd_237_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_237 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_250 assign process. --
    ap_sig_bdd_250_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_250 <= (ap_const_lv1_1 = ap_CS_fsm(16 downto 16));
    end process;


    -- ap_sig_bdd_258 assign process. --
    ap_sig_bdd_258_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_258 <= (ap_const_lv1_1 = ap_CS_fsm(17 downto 17));
    end process;


    -- ap_sig_bdd_268 assign process. --
    ap_sig_bdd_268_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_268 <= (ap_const_lv1_1 = ap_CS_fsm(14 downto 14));
    end process;


    -- ap_sig_bdd_34 assign process. --
    ap_sig_bdd_34_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_34 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_60 assign process. --
    ap_sig_bdd_60_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_60 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_69 assign process. --
    ap_sig_bdd_69_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_69 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_78 assign process. --
    ap_sig_bdd_78_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_78 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    -- ap_sig_bdd_98 assign process. --
    ap_sig_bdd_98_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_98 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    -- ap_sig_cseq_ST_st10_fsm_9 assign process. --
    ap_sig_cseq_ST_st10_fsm_9_assign_proc : process(ap_sig_bdd_123)
    begin
        if (ap_sig_bdd_123) then 
            ap_sig_cseq_ST_st10_fsm_9 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st10_fsm_9 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st11_fsm_10 assign process. --
    ap_sig_cseq_ST_st11_fsm_10_assign_proc : process(ap_sig_bdd_138)
    begin
        if (ap_sig_bdd_138) then 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st12_fsm_11 assign process. --
    ap_sig_cseq_ST_st12_fsm_11_assign_proc : process(ap_sig_bdd_147)
    begin
        if (ap_sig_bdd_147) then 
            ap_sig_cseq_ST_st12_fsm_11 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st12_fsm_11 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st13_fsm_12 assign process. --
    ap_sig_cseq_ST_st13_fsm_12_assign_proc : process(ap_sig_bdd_198)
    begin
        if (ap_sig_bdd_198) then 
            ap_sig_cseq_ST_st13_fsm_12 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st13_fsm_12 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st14_fsm_13 assign process. --
    ap_sig_cseq_ST_st14_fsm_13_assign_proc : process(ap_sig_bdd_161)
    begin
        if (ap_sig_bdd_161) then 
            ap_sig_cseq_ST_st14_fsm_13 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st14_fsm_13 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st15_fsm_14 assign process. --
    ap_sig_cseq_ST_st15_fsm_14_assign_proc : process(ap_sig_bdd_268)
    begin
        if (ap_sig_bdd_268) then 
            ap_sig_cseq_ST_st15_fsm_14 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st15_fsm_14 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st16_fsm_15 assign process. --
    ap_sig_cseq_ST_st16_fsm_15_assign_proc : process(ap_sig_bdd_169)
    begin
        if (ap_sig_bdd_169) then 
            ap_sig_cseq_ST_st16_fsm_15 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st16_fsm_15 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st17_fsm_16 assign process. --
    ap_sig_cseq_ST_st17_fsm_16_assign_proc : process(ap_sig_bdd_250)
    begin
        if (ap_sig_bdd_250) then 
            ap_sig_cseq_ST_st17_fsm_16 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st17_fsm_16 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st18_fsm_17 assign process. --
    ap_sig_cseq_ST_st18_fsm_17_assign_proc : process(ap_sig_bdd_258)
    begin
        if (ap_sig_bdd_258) then 
            ap_sig_cseq_ST_st18_fsm_17 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st18_fsm_17 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_34)
    begin
        if (ap_sig_bdd_34) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_237)
    begin
        if (ap_sig_bdd_237) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_60)
    begin
        if (ap_sig_bdd_60) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_69)
    begin
        if (ap_sig_bdd_69) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_4 assign process. --
    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_bdd_78)
    begin
        if (ap_sig_bdd_78) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st6_fsm_5 assign process. --
    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_bdd_98)
    begin
        if (ap_sig_bdd_98) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st7_fsm_6 assign process. --
    ap_sig_cseq_ST_st7_fsm_6_assign_proc : process(ap_sig_bdd_106)
    begin
        if (ap_sig_bdd_106) then 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st8_fsm_7 assign process. --
    ap_sig_cseq_ST_st8_fsm_7_assign_proc : process(ap_sig_bdd_114)
    begin
        if (ap_sig_bdd_114) then 
            ap_sig_cseq_ST_st8_fsm_7 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st8_fsm_7 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st9_fsm_8 assign process. --
    ap_sig_cseq_ST_st9_fsm_8_assign_proc : process(ap_sig_bdd_190)
    begin
        if (ap_sig_bdd_190) then 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_0;
        end if; 
    end process;

    grp_kuuga_bit_serial_add_fu_126_ap_start <= grp_kuuga_bit_serial_add_fu_126_ap_start_ap_start_reg;

    -- grp_kuuga_bit_serial_add_fu_126_arg1_V assign process. --
    grp_kuuga_bit_serial_add_fu_126_arg1_V_assign_proc : process(m_b_V_reg_299, ap_sig_cseq_ST_st10_fsm_9, tmp_5_i_reg_319, pc_V_load_reg_323, ap_sig_cseq_ST_st13_fsm_12)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st13_fsm_12) and not((ap_const_lv1_0 = tmp_5_i_reg_319)))) then 
            grp_kuuga_bit_serial_add_fu_126_arg1_V <= pc_V_load_reg_323;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9)) then 
            grp_kuuga_bit_serial_add_fu_126_arg1_V <= m_b_V_reg_299;
        else 
            grp_kuuga_bit_serial_add_fu_126_arg1_V <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    -- grp_kuuga_bit_serial_add_fu_126_arg2_V assign process. --
    grp_kuuga_bit_serial_add_fu_126_arg2_V_assign_proc : process(m_a_V_reg_294, ap_sig_cseq_ST_st10_fsm_9, tmp_5_i_reg_319, ap_sig_cseq_ST_st13_fsm_12)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st13_fsm_12) and not((ap_const_lv1_0 = tmp_5_i_reg_319)))) then 
            grp_kuuga_bit_serial_add_fu_126_arg2_V <= ap_const_lv32_1;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9)) then 
            grp_kuuga_bit_serial_add_fu_126_arg2_V <= m_a_V_reg_294;
        else 
            grp_kuuga_bit_serial_add_fu_126_arg2_V <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    -- grp_kuuga_bit_serial_add_fu_126_sub_flag assign process. --
    grp_kuuga_bit_serial_add_fu_126_sub_flag_assign_proc : process(ap_sig_cseq_ST_st10_fsm_9, tmp_5_i_reg_319, ap_sig_cseq_ST_st13_fsm_12)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st13_fsm_12) and not((ap_const_lv1_0 = tmp_5_i_reg_319)))) then 
            grp_kuuga_bit_serial_add_fu_126_sub_flag <= ap_const_logic_0;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st10_fsm_9)) then 
            grp_kuuga_bit_serial_add_fu_126_sub_flag <= ap_const_logic_1;
        else 
            grp_kuuga_bit_serial_add_fu_126_sub_flag <= 'X';
        end if; 
    end process;


    -- memory_V_address0 assign process. --
    memory_V_address0_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st5_fsm_4, tmp_3_fu_153_p1, memory_V_addr_3_reg_289, ap_sig_cseq_ST_st6_fsm_5, ap_sig_cseq_ST_st14_fsm_13, ap_sig_cseq_ST_st13_fsm_12, tmp_i_fu_187_p1, tmp_2_fu_192_p1, tmp_1_i_fu_196_p1, tmp_1_fu_243_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st13_fsm_12)) then 
            memory_V_address0 <= memory_V_addr_3_reg_289;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st14_fsm_13)) then 
            memory_V_address0 <= tmp_1_fu_243_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            memory_V_address0 <= tmp_1_i_fu_196_p1(10 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((ap_const_lv1_0 = tmp_3_fu_153_p1)))) then 
            memory_V_address0 <= tmp_2_fu_192_p1(10 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = tmp_3_fu_153_p1))) then 
            memory_V_address0 <= tmp_i_fu_187_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) then 
            memory_V_address0 <= ap_const_lv10_0;
        else 
            memory_V_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    -- memory_V_ce0 assign process. --
    memory_V_ce0_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st3_fsm_2, ap_sig_cseq_ST_st5_fsm_4, tmp_3_fu_153_p1, ap_sig_cseq_ST_st6_fsm_5, ap_sig_cseq_ST_st7_fsm_6, ap_sig_cseq_ST_st8_fsm_7, grp_kuuga_bit_serial_add_fu_126_ap_done, tmp_5_i_reg_319, ap_sig_cseq_ST_st14_fsm_13, ap_sig_cseq_ST_st16_fsm_15, ap_sig_cseq_ST_st13_fsm_12, ap_sig_cseq_ST_st2_fsm_1, ap_sig_cseq_ST_st17_fsm_16, ap_sig_cseq_ST_st18_fsm_17, ap_sig_cseq_ST_st15_fsm_14)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) or ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = tmp_3_fu_153_p1)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((ap_const_lv1_0 = tmp_3_fu_153_p1))) or (ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) or (ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6) or (ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7) or (ap_const_logic_1 = ap_sig_cseq_ST_st14_fsm_13) or (ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15) or ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st13_fsm_12) and not(((ap_const_logic_0 = grp_kuuga_bit_serial_add_fu_126_ap_done) and not((ap_const_lv1_0 = tmp_5_i_reg_319))))) or (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) or (ap_const_logic_1 = ap_sig_cseq_ST_st17_fsm_16) or (ap_const_logic_1 = ap_sig_cseq_ST_st18_fsm_17) or (ap_const_logic_1 = ap_sig_cseq_ST_st15_fsm_14))) then 
            memory_V_ce0 <= ap_const_logic_1;
        else 
            memory_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    memory_V_d0 <= check_V_reg_304;

    -- memory_V_we0 assign process. --
    memory_V_we0_assign_proc : process(grp_kuuga_bit_serial_add_fu_126_ap_done, tmp_5_i_reg_319, ap_sig_cseq_ST_st13_fsm_12)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st13_fsm_12) and not(((ap_const_logic_0 = grp_kuuga_bit_serial_add_fu_126_ap_done) and not((ap_const_lv1_0 = tmp_5_i_reg_319))))))) then 
            memory_V_we0 <= ap_const_logic_1;
        else 
            memory_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_243_p1 <= std_logic_vector(resize(unsigned(pc_V_fu_70),64));
    tmp_1_i_fu_196_p1 <= std_logic_vector(resize(unsigned(b_V_reg_269),64));
        tmp_2_fu_192_p1 <= std_logic_vector(resize(signed(output_loc),64));

    tmp_2_i_fu_212_p2 <= (zero_flag or tmp_4_reg_309);
    tmp_3_fu_153_p1 <= p_Val2_1_reg_117(1 - 1 downto 0);
    tmp_4_i_fu_217_p3 <= (ap_const_lv31_0 & tmp_2_i_reg_314);
    tmp_5_i_fu_224_p2 <= "1" when (tmp_4_i_fu_217_p3 = ap_const_lv32_0) else "0";
    tmp_6_i_fu_230_p1 <= std_logic_vector(resize(unsigned(c_V_reg_274),32));
    tmp_i_fu_187_p1 <= std_logic_vector(resize(unsigned(a_V_fu_157_p4),64));
end behav;
