transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/extensorLUI.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/muxGenerico4.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/ULA.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/somador.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/soma4.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/single_port_RAM.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/shift2_imediato.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/shift2.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/ROM.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/Registrador.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/muxGenerico2.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/estendeSinalGenerico.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/constantesMIPS.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/bancoRegistradores.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/UC_ULA.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/uc.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/fluxo_dados.vhd}
vcom -2008 -work work {/home/franciscoa/Documentos/descomp/Projeto_Descomp_final/mips.vhd}

