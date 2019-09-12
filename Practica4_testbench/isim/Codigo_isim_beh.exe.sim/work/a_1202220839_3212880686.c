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
static const char *ng0 = "H:/Users/Alicia Espigares/Creciendo como ingeniera/Programming programes/VHDL/Ejercicios Clase/Practica4_testbench/Codigo.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1202220839_3212880686_p_0(char *t0)
{
    char t17[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;
    int t20;
    int t21;

LAB0:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4040);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 7760U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t3, t2, 1);
    t8 = (t17 + 12U);
    t18 = *((unsigned int *)t8);
    t19 = (1U * t18);
    t1 = (2U != t19);
    if (t1 == 1)
        goto LAB11;

LAB12:    t11 = (t0 + 4136);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 2U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t20 = *((int *)t3);
    t1 = (t20 == 95);
    if (t1 != 0)
        goto LAB13;

LAB15:    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t20 = *((int *)t3);
    t1 = (t20 == 799);
    if (t1 != 0)
        goto LAB16;

LAB17:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t20 = *((int *)t3);
    t21 = (t20 + 1);
    t2 = (t0 + 4264);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t21;
    xsi_driver_first_trans_fast(t2);

LAB14:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1312U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(47, ng0);
    t7 = xsi_get_transient_memory(2U);
    memset(t7, 0, 2U);
    t11 = t7;
    memset(t11, (unsigned char)2, 2U);
    t12 = (t0 + 4136);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 2U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 4200);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4264);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 4328);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 4392);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    xsi_size_not_matching(2U, t19, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 4392);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB14;

LAB16:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4392);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 4264);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t20 = *((int *)t3);
    t1 = (t20 == 1);
    if (t1 != 0)
        goto LAB18;

LAB20:    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t20 = *((int *)t3);
    t1 = (t20 == 520);
    if (t1 != 0)
        goto LAB21;

LAB22:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t20 = *((int *)t3);
    t21 = (t20 + 1);
    t2 = (t0 + 4200);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t21;
    xsi_driver_first_trans_fast(t2);

LAB19:    goto LAB14;

LAB18:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 4328);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB19;

LAB21:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4328);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 4200);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB19;

}

static void work_a_1202220839_3212880686_p_1(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    int t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    int t12;
    unsigned char t13;
    char *t14;
    int t15;
    unsigned char t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(75, ng0);
    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t7 = (t6 < 510);
    if (t7 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t23 = (t0 + 7839);
    t25 = (t0 + 4456);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t23, 3U);
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 4056);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t4 = (t0 + 7836);
    t18 = (t0 + 4456);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t4, 3U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB2;

LAB5:    t4 = (t0 + 2152U);
    t14 = *((char **)t4);
    t15 = *((int *)t14);
    t16 = (t15 > 143);
    t1 = t16;
    goto LAB7;

LAB8:    t4 = (t0 + 2152U);
    t11 = *((char **)t4);
    t12 = *((int *)t11);
    t13 = (t12 < 784);
    t2 = t13;
    goto LAB10;

LAB11:    t4 = (t0 + 2312U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t10 = (t9 > 30);
    t3 = t10;
    goto LAB13;

LAB15:    goto LAB2;

}


extern void work_a_1202220839_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1202220839_3212880686_p_0,(void *)work_a_1202220839_3212880686_p_1};
	xsi_register_didat("work_a_1202220839_3212880686", "isim/Codigo_isim_beh.exe.sim/work/a_1202220839_3212880686.didat");
	xsi_register_executes(pe);
}
