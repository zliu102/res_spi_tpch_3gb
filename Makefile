# contrib/reservoir_sampling/Makefile

MODULE_big = res_spi_tpch_3gb
OBJS = res_spi_tpch_3gb.o $(WIN32RES)
EXTENSION = res_spi_tpch_3gb
DATA = res_spi_tpch_3gb--1.0.sql
PGFILEDESC = "res_spi_tpch_3gb - binary search for integer arrays"
PG_CFLAGS += -ggdb -O0

REGRESS = res_spi_tpch_3gb

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/res_spi_tpch_3gb
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
