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


LIBS += -L$$DEPLOY_LIB_OUTPUT_DIR -llief


INCLUDEPATH += "$$PWD/include"
