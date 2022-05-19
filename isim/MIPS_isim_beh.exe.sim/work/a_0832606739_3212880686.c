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
static const char *ng0 = "D:/Mina/Term 6/Computer Archetcture/Project/Final Project/ALU.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t11[16];
    char t14[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t12;
    unsigned int t13;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5176U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 5192U);
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 3232);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5208U);
    t3 = (t0 + 5316);
    t6 = (t11 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t11);
    if (t5 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5208U);
    t3 = (t0 + 5320);
    t6 = (t11 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t11);
    if (t5 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5208U);
    t3 = (t0 + 5324);
    t6 = (t11 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t11);
    if (t5 != 0)
        goto LAB14;

LAB15:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5208U);
    t3 = (t0 + 5392);
    t6 = (t11 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t11);
    if (t5 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5208U);
    t3 = (t0 + 5396);
    t6 = (t11 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t11);
    if (t5 != 0)
        goto LAB23;

LAB24:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5208U);
    t3 = (t0 + 5400);
    t6 = (t11 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t11);
    if (t5 != 0)
        goto LAB27;

LAB28:
LAB6:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t6 = (t0 + 3232);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5176U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5192U);
    t15 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t14, t8, t7, t10, t9);
    t16 = (t14 + 12U);
    t13 = *((unsigned int *)t16);
    t17 = (1U * t13);
    t18 = (32U != t17);
    if (t18 == 1)
        goto LAB8;

LAB9:    t19 = (t0 + 3296);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 32U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB6;

LAB8:    xsi_size_not_matching(32U, t17, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(32, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5176U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5192U);
    t15 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t14, t8, t7, t10, t9);
    t16 = (t14 + 12U);
    t13 = *((unsigned int *)t16);
    t17 = (1U * t13);
    t18 = (32U != t17);
    if (t18 == 1)
        goto LAB12;

LAB13:    t19 = (t0 + 3296);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 32U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB6;

LAB12:    xsi_size_not_matching(32U, t17, 0);
    goto LAB13;

LAB14:    xsi_set_current_line(36, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5176U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5192U);
    t18 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t8, t7, t10, t9);
    if (t18 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 5360);
    t3 = (t0 + 3296);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);

LAB17:    goto LAB6;

LAB16:    xsi_set_current_line(37, ng0);
    t15 = (t0 + 5328);
    t19 = (t0 + 3296);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 32U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB17;

LAB19:    xsi_set_current_line(43, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5176U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5192U);
    t15 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t14, t8, t7, t10, t9);
    t16 = (t14 + 12U);
    t13 = *((unsigned int *)t16);
    t17 = (1U * t13);
    t18 = (32U != t17);
    if (t18 == 1)
        goto LAB21;

LAB22:    t19 = (t0 + 3296);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 32U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB6;

LAB21:    xsi_size_not_matching(32U, t17, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(46, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5176U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5192U);
    t15 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t14, t8, t7, t10, t9);
    t16 = (t14 + 12U);
    t13 = *((unsigned int *)t16);
    t17 = (1U * t13);
    t18 = (32U != t17);
    if (t18 == 1)
        goto LAB25;

LAB26:    t19 = (t0 + 3296);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 32U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB6;

LAB25:    xsi_size_not_matching(32U, t17, 0);
    goto LAB26;

LAB27:    xsi_set_current_line(49, ng0);
    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5176U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5192U);
    t15 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t14, t8, t7, t10, t9);
    t16 = (t14 + 12U);
    t13 = *((unsigned int *)t16);
    t17 = (1U * t13);
    t18 = (32U != t17);
    if (t18 == 1)
        goto LAB29;

LAB30:    t19 = (t0 + 3296);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 32U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB6;

LAB29:    xsi_size_not_matching(32U, t17, 0);
    goto LAB30;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/MIPS_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
