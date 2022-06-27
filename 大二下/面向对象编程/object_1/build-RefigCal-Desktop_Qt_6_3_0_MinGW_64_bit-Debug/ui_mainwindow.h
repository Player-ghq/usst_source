/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.3.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *action_triangle;
    QAction *action_rectangle;
    QAction *action_square;
    QAction *action_circle;
    QAction *action_trapezoid;
    QAction *action_exit;
    QAction *action_triangular;
    QAction *action_cuboid;
    QAction *action_cube;
    QAction *action_cylinder;
    QAction *action_globe;
    QAction *action_cone;
    QWidget *centralwidget;
    QMenuBar *menubar;
    QMenu *menu;
    QMenu *menu_S;
    QMenu *menu_H;
    QStatusBar *statusbar;
    QToolBar *toolBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(800, 600);
        action_triangle = new QAction(MainWindow);
        action_triangle->setObjectName(QString::fromUtf8("action_triangle"));
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/triangle.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_triangle->setIcon(icon);
        action_rectangle = new QAction(MainWindow);
        action_rectangle->setObjectName(QString::fromUtf8("action_rectangle"));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8(":/rectangle.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_rectangle->setIcon(icon1);
        action_square = new QAction(MainWindow);
        action_square->setObjectName(QString::fromUtf8("action_square"));
        QIcon icon2;
        icon2.addFile(QString::fromUtf8(":/square.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_square->setIcon(icon2);
        action_circle = new QAction(MainWindow);
        action_circle->setObjectName(QString::fromUtf8("action_circle"));
        QIcon icon3;
        icon3.addFile(QString::fromUtf8(":/circle.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_circle->setIcon(icon3);
        action_trapezoid = new QAction(MainWindow);
        action_trapezoid->setObjectName(QString::fromUtf8("action_trapezoid"));
        QIcon icon4;
        icon4.addFile(QString::fromUtf8(":/trapezoid.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_trapezoid->setIcon(icon4);
        action_exit = new QAction(MainWindow);
        action_exit->setObjectName(QString::fromUtf8("action_exit"));
        QIcon icon5;
        icon5.addFile(QString::fromUtf8(":/exit.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_exit->setIcon(icon5);
        action_triangular = new QAction(MainWindow);
        action_triangular->setObjectName(QString::fromUtf8("action_triangular"));
        QIcon icon6;
        icon6.addFile(QString::fromUtf8(":/triangulapyramid.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_triangular->setIcon(icon6);
        action_cuboid = new QAction(MainWindow);
        action_cuboid->setObjectName(QString::fromUtf8("action_cuboid"));
        QIcon icon7;
        icon7.addFile(QString::fromUtf8(":/cuboid.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_cuboid->setIcon(icon7);
        action_cube = new QAction(MainWindow);
        action_cube->setObjectName(QString::fromUtf8("action_cube"));
        QIcon icon8;
        icon8.addFile(QString::fromUtf8(":/cude.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_cube->setIcon(icon8);
        action_cylinder = new QAction(MainWindow);
        action_cylinder->setObjectName(QString::fromUtf8("action_cylinder"));
        QIcon icon9;
        icon9.addFile(QString::fromUtf8(":/cylinder.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_cylinder->setIcon(icon9);
        action_globe = new QAction(MainWindow);
        action_globe->setObjectName(QString::fromUtf8("action_globe"));
        QIcon icon10;
        icon10.addFile(QString::fromUtf8(":/globe.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_globe->setIcon(icon10);
        action_cone = new QAction(MainWindow);
        action_cone->setObjectName(QString::fromUtf8("action_cone"));
        QIcon icon11;
        icon11.addFile(QString::fromUtf8(":/cone.png"), QSize(), QIcon::Normal, QIcon::Off);
        action_cone->setIcon(icon11);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 26));
        menu = new QMenu(menubar);
        menu->setObjectName(QString::fromUtf8("menu"));
        menu_S = new QMenu(menubar);
        menu_S->setObjectName(QString::fromUtf8("menu_S"));
        menu_H = new QMenu(menubar);
        menu_H->setObjectName(QString::fromUtf8("menu_H"));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);
        toolBar = new QToolBar(MainWindow);
        toolBar->setObjectName(QString::fromUtf8("toolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, toolBar);

        menubar->addAction(menu->menuAction());
        menubar->addAction(menu_S->menuAction());
        menubar->addAction(menu_H->menuAction());
        menu->addAction(action_triangle);
        menu->addAction(action_rectangle);
        menu->addAction(action_square);
        menu->addAction(action_circle);
        menu->addAction(action_trapezoid);
        menu->addSeparator();
        menu->addAction(action_exit);
        menu_S->addAction(action_triangular);
        menu_S->addAction(action_cuboid);
        menu_S->addAction(action_cube);
        menu_S->addAction(action_cylinder);
        menu_S->addAction(action_globe);
        menu_S->addAction(action_cone);
        toolBar->addAction(action_triangle);
        toolBar->addAction(action_rectangle);
        toolBar->addAction(action_square);
        toolBar->addAction(action_circle);
        toolBar->addAction(action_trapezoid);
        toolBar->addAction(action_triangular);
        toolBar->addAction(action_cuboid);
        toolBar->addAction(action_cube);
        toolBar->addAction(action_cylinder);
        toolBar->addAction(action_globe);
        toolBar->addAction(action_cone);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        action_triangle->setText(QCoreApplication::translate("MainWindow", "\344\270\211\350\247\222\345\275\242(&T)", nullptr));
#if QT_CONFIG(tooltip)
        action_triangle->setToolTip(QCoreApplication::translate("MainWindow", "\344\270\211\350\247\222\345\275\242(&T)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_triangle->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+T", nullptr));
#endif // QT_CONFIG(shortcut)
        action_rectangle->setText(QCoreApplication::translate("MainWindow", "\351\225\277\346\226\271\345\275\242(&R)", nullptr));
#if QT_CONFIG(tooltip)
        action_rectangle->setToolTip(QCoreApplication::translate("MainWindow", "\351\225\277\346\226\271\345\275\242(&R)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_rectangle->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+R", nullptr));
#endif // QT_CONFIG(shortcut)
        action_square->setText(QCoreApplication::translate("MainWindow", "\346\255\243\346\226\271\345\275\242(&R)", nullptr));
#if QT_CONFIG(tooltip)
        action_square->setToolTip(QCoreApplication::translate("MainWindow", "\346\255\243\346\226\271\345\275\242(&R)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_square->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+R", nullptr));
#endif // QT_CONFIG(shortcut)
        action_circle->setText(QCoreApplication::translate("MainWindow", "\345\234\206(&C)", nullptr));
#if QT_CONFIG(tooltip)
        action_circle->setToolTip(QCoreApplication::translate("MainWindow", "\345\234\206(&C)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_circle->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+C", nullptr));
#endif // QT_CONFIG(shortcut)
        action_trapezoid->setText(QCoreApplication::translate("MainWindow", "\346\242\257\345\275\242(&L)", nullptr));
#if QT_CONFIG(tooltip)
        action_trapezoid->setToolTip(QCoreApplication::translate("MainWindow", "\346\242\257\345\275\242(&L)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_trapezoid->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+L", nullptr));
#endif // QT_CONFIG(shortcut)
        action_exit->setText(QCoreApplication::translate("MainWindow", "\351\200\200\345\207\272(&X)", nullptr));
#if QT_CONFIG(tooltip)
        action_exit->setToolTip(QCoreApplication::translate("MainWindow", "\351\200\200\345\207\272(&X)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_exit->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+X", nullptr));
#endif // QT_CONFIG(shortcut)
        action_triangular->setText(QCoreApplication::translate("MainWindow", "\344\270\211\346\243\261\351\224\245(&P)", nullptr));
#if QT_CONFIG(tooltip)
        action_triangular->setToolTip(QCoreApplication::translate("MainWindow", "\344\270\211\346\243\261\351\224\245(&P)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_triangular->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+P", nullptr));
#endif // QT_CONFIG(shortcut)
        action_cuboid->setText(QCoreApplication::translate("MainWindow", "\351\225\277\346\226\271\344\275\223(&U)", nullptr));
#if QT_CONFIG(tooltip)
        action_cuboid->setToolTip(QCoreApplication::translate("MainWindow", "\351\225\277\346\226\271\344\275\223(&U)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_cuboid->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+U", nullptr));
#endif // QT_CONFIG(shortcut)
        action_cube->setText(QCoreApplication::translate("MainWindow", "\346\255\243\346\226\271\344\275\223(&B)", nullptr));
#if QT_CONFIG(tooltip)
        action_cube->setToolTip(QCoreApplication::translate("MainWindow", "\346\255\243\346\226\271\344\275\223(&B)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_cube->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+B", nullptr));
#endif // QT_CONFIG(shortcut)
        action_cylinder->setText(QCoreApplication::translate("MainWindow", "\345\234\206\346\237\261(&C)", nullptr));
#if QT_CONFIG(tooltip)
        action_cylinder->setToolTip(QCoreApplication::translate("MainWindow", "\345\234\206\346\237\261(&C)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_cylinder->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+I", nullptr));
#endif // QT_CONFIG(shortcut)
        action_globe->setText(QCoreApplication::translate("MainWindow", "\347\220\203(&G)", nullptr));
#if QT_CONFIG(tooltip)
        action_globe->setToolTip(QCoreApplication::translate("MainWindow", "\347\220\203(&G)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_globe->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+G", nullptr));
#endif // QT_CONFIG(shortcut)
        action_cone->setText(QCoreApplication::translate("MainWindow", "\345\234\206\351\224\245(&O)", nullptr));
#if QT_CONFIG(tooltip)
        action_cone->setToolTip(QCoreApplication::translate("MainWindow", "\345\234\206\351\224\245(&O)", nullptr));
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(shortcut)
        action_cone->setShortcut(QCoreApplication::translate("MainWindow", "Ctrl+O", nullptr));
#endif // QT_CONFIG(shortcut)
        menu->setTitle(QCoreApplication::translate("MainWindow", "\351\235\242\347\247\257\350\256\241\347\256\227(&A)", nullptr));
        menu_S->setTitle(QCoreApplication::translate("MainWindow", "\344\275\223\347\247\257\350\256\241\347\256\227(&S)", nullptr));
        menu_H->setTitle(QCoreApplication::translate("MainWindow", "\345\270\256\345\212\251(&H)", nullptr));
        toolBar->setWindowTitle(QCoreApplication::translate("MainWindow", "toolBar", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
