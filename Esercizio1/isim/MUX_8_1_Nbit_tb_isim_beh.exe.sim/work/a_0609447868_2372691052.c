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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Esercizio1/MUX_8_1_Nbit_tb.vhd";



static void work_a_0609447868_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;

LAB0:    t1 = (t0 + 3632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3440);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 7920);
    t5 = (t0 + 4016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 7921);
    t5 = (t0 + 4080);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 7922);
    t5 = (t0 + 4144);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 7923);
    t5 = (t0 + 4208);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 7924);
    t5 = (t0 + 4272);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 7925);
    t5 = (t0 + 4336);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 7926);
    t5 = (t0 + 4400);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 7927);
    t5 = (t0 + 4464);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 7928);
    t5 = (t0 + 4528);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(79, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 3440);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 7931);
    t10 = 1;
    if (1U == 1U)
        goto LAB14;

LAB15:    t10 = 0;

LAB16:    if (t10 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 7939);
    t5 = (t0 + 4016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 7940);
    t5 = (t0 + 4080);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 7941);
    t5 = (t0 + 4144);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 7942);
    t5 = (t0 + 4208);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 7943);
    t5 = (t0 + 4272);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 7944);
    t5 = (t0 + 4336);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 7945);
    t5 = (t0 + 4400);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 7946);
    t5 = (t0 + 4464);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 1U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 7947);
    t5 = (t0 + 4528);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(95, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 3440);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t8 = (t0 + 7932);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB13;

LAB14:    t11 = 0;

LAB17:    if (t11 < 1U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB15;

LAB19:    t11 = (t11 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 7950);
    t10 = 1;
    if (1U == 1U)
        goto LAB26;

LAB27:    t10 = 0;

LAB28:    if (t10 == 0)
        goto LAB24;

LAB25:    xsi_set_current_line(100, ng0);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    t8 = (t0 + 7951);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB25;

LAB26:    t11 = 0;

LAB29:    if (t11 < 1U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB27;

LAB31:    t11 = (t11 + 1);
    goto LAB29;

LAB32:    goto LAB2;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

}


extern void work_a_0609447868_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0609447868_2372691052_p_0};
	xsi_register_didat("work_a_0609447868_2372691052", "isim/MUX_8_1_Nbit_tb_isim_beh.exe.sim/work/a_0609447868_2372691052.didat");
	xsi_register_executes(pe);
}
