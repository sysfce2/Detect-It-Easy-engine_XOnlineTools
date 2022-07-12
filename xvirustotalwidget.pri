QT += network

INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD

HEADERS += \
    $$PWD/dialogxvirustotal.h \
    $$PWD/xonlinetools.h \
    $$PWD/xonlinetoolsdialogprocess.h \
    $$PWD/xonlinetoolsoptionswidget.h \
    $$PWD/xvirustotal.h \
    $$PWD/xvirustotalwidget.h

SOURCES += \
    $$PWD/dialogxvirustotal.cpp \
    $$PWD/xonlinetools.cpp \
    $$PWD/xonlinetoolsdialogprocess.cpp \
    $$PWD/xonlinetoolsoptionswidget.cpp \
    $$PWD/xvirustotal.cpp \
    $$PWD/xvirustotalwidget.cpp

!contains(XCONFIG, xformats) {
    XCONFIG += xformats
    include($$PWD/../Formats/xformats.pri)
}

!contains(XCONFIG, xdialogprocess) {
    XCONFIG += xdialogprocess
    include($$PWD/../FormatDialogs/xdialogprocess.pri)
}

FORMS += \
    $$PWD/dialogxvirustotal.ui \
    $$PWD/xonlinetoolsoptionswidget.ui \
    $$PWD/xvirustotalwidget.ui

DISTFILES += \
    $$PWD/xvirustotalwidget.cmake
