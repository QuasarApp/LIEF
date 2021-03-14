#
# Copyright (C) 2021-2021 QuasarApp.
# Distributed under the lgplv3 software license, see the accompanying
# Everyone is permitted to copy and distribute verbatim copies
# of this license document, but changing it is not allowed.
#

!isEmpty(LIEF_LIB):error("includeLIEF.pri already included")
LIEF_LIB = 1

#DEPENDS
LIEF_LIB_OUTPUT_DIR="$$PWD/Build"

DEFINES += LIEF_C_API
DEFINES += LIEF_USE_CCACHE

DEFINES += LIEF_ELF
DEFINES += LIEF_PE
DEFINES += LIEF_MACHO
DEFINES += LIEF_ELF_SUPPORT
DEFINES += LIEF_PE_SUPPORT
DEFINES += LIEF_MACHO_SUPPORT



LIBS += -L$$DEPLOY_LIB_OUTPUT_DIR -llief


INCLUDEPATH += "$$PWD/include"
