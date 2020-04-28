/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio12/BIPUSH/control_store.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_0873426948_3990940387_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(565, ng0);

LAB3:    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = (t0 + 1040U);
    t4 = *((char **)t1);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t4);
    t6 = (t5 - 511);
    t7 = (t6 * -1);
    xsi_vhdl_check_range_of_index(511, 0, -1, t5);
    t8 = (36U * t7);
    t9 = (0 + t8);
    t10 = (t2 + t9);
    t11 = (t0 + 2872);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t10, 36U);
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 2792);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0873426948_3990940387_init()
{
	static char *pe[] = {(void *)work_a_0873426948_3990940387_p_0};
	xsi_register_didat("work_a_0873426948_3990940387", "isim/processor_tb_isim_beh.exe.sim/work/a_0873426948_3990940387.didat");
	xsi_register_executes(pe);
}
