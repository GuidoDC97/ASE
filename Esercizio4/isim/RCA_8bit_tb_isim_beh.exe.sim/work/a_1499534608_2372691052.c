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
static const char *ng0 = "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina nuova/Esercizio4/RCA_8bit_tb.vhd";



static void work_a_1499534608_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 3904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3080);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3080);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1499534608_2372691052_p_1(char *t0)
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
    unsigned char t11;
    unsigned int t12;
    unsigned char t13;
    unsigned char t14;

LAB0:    t1 = (t0 + 3520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 7556);
    t5 = (t0 + 3968);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 7564);
    t5 = (t0 + 4032);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4096);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4160);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(110, ng0);
    t3 = (9 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 7572);
    t11 = 1;
    if (8U == 8U)
        goto LAB17;

LAB18:    t11 = 0;

LAB19:    if (t11 == 1)
        goto LAB14;

LAB15:    t10 = (unsigned char)0;

LAB16:    if (t10 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4160);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB25:    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t8 = (t0 + 7580);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB13;

LAB14:    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t13 = *((unsigned char *)t9);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB16;

LAB17:    t12 = 0;

LAB20:    if (t12 < 8U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB18;

LAB22:    t12 = (t12 + 1);
    goto LAB20;

LAB23:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 7587);
    t5 = (t0 + 3968);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 7595);
    t5 = (t0 + 4032);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4096);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(122, ng0);
    t3 = (9 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB29:    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

LAB27:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 7603);
    t11 = 1;
    if (8U == 8U)
        goto LAB36;

LAB37:    t11 = 0;

LAB38:    if (t11 == 1)
        goto LAB33;

LAB34:    t10 = (unsigned char)0;

LAB35:    if (t10 == 0)
        goto LAB31;

LAB32:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 4160);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB44:    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB28:    goto LAB27;

LAB30:    goto LAB28;

LAB31:    t8 = (t0 + 7611);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB32;

LAB33:    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t13 = *((unsigned char *)t9);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB35;

LAB36:    t12 = 0;

LAB39:    if (t12 < 8U)
        goto LAB40;
    else
        goto LAB38;

LAB40:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB37;

LAB41:    t12 = (t12 + 1);
    goto LAB39;

LAB42:    xsi_set_current_line(131, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB43:    goto LAB42;

LAB45:    goto LAB43;

LAB46:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 7618);
    t11 = 1;
    if (8U == 8U)
        goto LAB55;

LAB56:    t11 = 0;

LAB57:    if (t11 == 1)
        goto LAB52;

LAB53:    t10 = (unsigned char)0;

LAB54:    if (t10 == 0)
        goto LAB50;

LAB51:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 7633);
    t5 = (t0 + 3968);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 7641);
    t5 = (t0 + 4032);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 4096);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(141, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB63:    *((char **)t1) = &&LAB64;
    goto LAB1;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

LAB50:    t8 = (t0 + 7626);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB51;

LAB52:    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t13 = *((unsigned char *)t9);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB54;

LAB55:    t12 = 0;

LAB58:    if (t12 < 8U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB56;

LAB60:    t12 = (t12 + 1);
    goto LAB58;

LAB61:    xsi_set_current_line(143, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB67:    *((char **)t1) = &&LAB68;
    goto LAB1;

LAB62:    goto LAB61;

LAB64:    goto LAB62;

LAB65:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 7649);
    t11 = 1;
    if (8U == 8U)
        goto LAB74;

LAB75:    t11 = 0;

LAB76:    if (t11 == 1)
        goto LAB71;

LAB72:    t10 = (unsigned char)0;

LAB73:    if (t10 == 0)
        goto LAB69;

LAB70:    xsi_set_current_line(149, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB82:    *((char **)t1) = &&LAB83;
    goto LAB1;

LAB66:    goto LAB65;

LAB68:    goto LAB66;

LAB69:    t8 = (t0 + 7657);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB70;

LAB71:    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t13 = *((unsigned char *)t9);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB73;

LAB74:    t12 = 0;

LAB77:    if (t12 < 8U)
        goto LAB78;
    else
        goto LAB76;

LAB78:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB75;

LAB79:    t12 = (t12 + 1);
    goto LAB77;

LAB80:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 4160);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(152, ng0);
    t3 = (1 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB86:    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB81:    goto LAB80;

LAB83:    goto LAB81;

LAB84:    xsi_set_current_line(154, ng0);
    t2 = (t0 + 7664);
    t5 = (t0 + 3968);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(155, ng0);
    t2 = (t0 + 7672);
    t5 = (t0 + 4032);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 4096);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(157, ng0);
    t3 = (16 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB90:    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB85:    goto LAB84;

LAB87:    goto LAB85;

LAB88:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 4160);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(160, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, t3);

LAB94:    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB89:    goto LAB88;

LAB91:    goto LAB89;

LAB92:    xsi_set_current_line(163, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 7680);
    t11 = 1;
    if (8U == 8U)
        goto LAB101;

LAB102:    t11 = 0;

LAB103:    if (t11 == 1)
        goto LAB98;

LAB99:    t10 = (unsigned char)0;

LAB100:    if (t10 == 0)
        goto LAB96;

LAB97:    xsi_set_current_line(167, ng0);

LAB109:    *((char **)t1) = &&LAB110;
    goto LAB1;

LAB93:    goto LAB92;

LAB95:    goto LAB93;

LAB96:    t8 = (t0 + 7688);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB97;

LAB98:    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t13 = *((unsigned char *)t9);
    t14 = (t13 == (unsigned char)3);
    t10 = t14;
    goto LAB100;

LAB101:    t12 = 0;

LAB104:    if (t12 < 8U)
        goto LAB105;
    else
        goto LAB103;

LAB105:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB102;

LAB106:    t12 = (t12 + 1);
    goto LAB104;

LAB107:    goto LAB2;

LAB108:    goto LAB107;

LAB110:    goto LAB108;

}


extern void work_a_1499534608_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1499534608_2372691052_p_0,(void *)work_a_1499534608_2372691052_p_1};
	xsi_register_didat("work_a_1499534608_2372691052", "isim/RCA_8bit_tb_isim_beh.exe.sim/work/a_1499534608_2372691052.didat");
	xsi_register_executes(pe);
}
