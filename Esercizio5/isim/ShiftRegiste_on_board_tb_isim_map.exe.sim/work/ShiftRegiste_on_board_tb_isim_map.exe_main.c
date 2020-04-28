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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_TEXTIO;
char *IEEE_P_2592010699;
char *SIMPRIM_P_0947159679;
char *STD_STANDARD;
char *IEEE_P_2717149903;
char *IEEE_P_1367372525;
char *SIMPRIM_P_4208868169;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_1637942105_2431929443_0433961640_init();
    simprim_a_1387470219_3879906181_0433961640_init();
    simprim_a_3936907874_4055128042_0433961640_init();
    simprim_a_2620028433_2341067045_0433961640_init();
    simprim_a_3156740924_4150518722_0433961640_init();
    simprim_a_1890242413_1957906245_0433961640_init();
    simprim_a_2655880337_1957906245_0433961640_init();
    simprim_a_0873044386_1957906245_0433961640_init();
    simprim_a_2516751591_1957906245_0433961640_init();
    simprim_a_3102250333_1957906245_0433961640_init();
    simprim_a_0981467293_1957906245_0433961640_init();
    simprim_a_3279087018_1957906245_0433961640_init();
    simprim_a_2140580687_1957906245_0433961640_init();
    simprim_a_3942226005_1957906245_0433961640_init();
    simprim_a_1452489327_2810828532_init();
    simprim_a_1197815433_2082082460_init();
    simprim_a_4130118134_1564065396_0433961640_init();
    simprim_a_0457340132_2413300256_0433961640_init();
    simprim_a_2880286190_2413300256_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_1491652388_0632001823_init();
    work_a_2582771221_2372691052_init();


    xsi_register_tops("work_a_2582771221_2372691052");

    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");

    return xsi_run_simulation(argc, argv);

}
