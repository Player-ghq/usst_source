QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    cylinkderdialog.cpp \
    main.cpp \
    mainwindow.cpp \
    triangle.cpp \
    triangledialog.cpp

HEADERS += \
    cylinkderdialog.h \
    mainwindow.h \
    triangle.h \
    triangledialog.h

FORMS += \
    cylinkderdialog.ui \
    mainwindow.ui \
    triangledialog.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    image/meun.qrc

DISTFILES += \
    image/circle.png \
    image/cone.png \
    image/cuboid.png \
    image/cude.png \
    image/cylinder.png \
    image/exit.png \
    image/globe.png \
    image/introduction.png \
    image/rectangle.png \
    image/square.png \
    image/trapezoid.png \
    image/triangle.png \
    image/triangulapyramid.png
