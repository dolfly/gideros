QT -= core gui

TARGET = bitop
TEMPLATE = lib

INCLUDEPATH += ../../../Sdk/include

SOURCES += \
    bit.c \
	bit_stub.cpp

HEADERS +=

LIBS += -L"../../../Sdk/lib/desktop" -llua

macx {
QMAKE_POST_LINK += install_name_tool -change liblua.1.dylib "@executable_path/../Frameworks/liblua.1.dylib" $(TARGET);
}
