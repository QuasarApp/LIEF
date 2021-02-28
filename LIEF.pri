#
# Copyright (C) 2021-2021 QuasarApp.
# Distributed under the lgplv3 software license, see the accompanying
# Everyone is permitted to copy and distribute verbatim copies
# of this license document, but changing it is not allowed.
#

CMD=cmake -DLIEF_PYTHON_API=off -DLIEF_EXAMPLES=off -DLIEF_LOGGING=off -DLIEF_LOGGING_DEBUG=off -DLIEF_ENABLE_JSON=off -DLIEF_OAT=off -DLIEF_DEX=off -DLIEF_VDEX=off -DLIEF_ART=off -DBUILD_SHARED_LIBS=on -DCMAKE_BUILD_TYPE=Release $$PWD -BBuild
message(lief cmake command  = $$CMD)
system($$CMD)

all.depends += lief

lief.commands=cmake --build $$PWD/Build --target LIB_LIEF --config Release --parallel 4

QMAKE_EXTRA_TARGETS += \
    lief
