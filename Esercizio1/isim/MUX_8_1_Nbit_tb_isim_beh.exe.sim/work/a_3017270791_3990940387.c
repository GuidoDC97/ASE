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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Esercizio1/MUX_2_1_Nbit.vhd";



static void work_a_3017270791_3990940387_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB7, &&LAB7, &&LAB5, &&LAB6, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7};

LAB0:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(17, ng0);

LAB10:    t2 = (t0 + 3112);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB5:    xsi_set_current_line(18, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t5 = (t0 + 3192);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 1U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB6:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 3192);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 1U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(18, ng0);
    t2 = xsi_get_transient_memory(1U);
    memset(t2, 0, 1U);
    t3 = t2;
    memset(t3, (unsigned char)8, 1U);
    t5 = (t0 + 3192);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB8:    t3 = (t0 + 3112);
    *((int *)t3) = 0;
    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_3017270791_3990940387_init()
{
	static char *pe[] = {(void *)work_a_3017270791_3990940387_p_0};
	xsi_register_didat("work_a_3017270791_3990940387", "isim/MUX_8_1_Nbit_tb_isim_beh.exe.sim/work/a_3017270791_3990940387.didat");
	xsi_register_executes(pe);
}
