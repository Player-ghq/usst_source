/********************************************************************************
** Form generated from reading UI file 'cylinkderdialog.ui'
**
** Created by: Qt User Interface Compiler version 6.3.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CYLINKDERDIALOG_H
#define UI_CYLINKDERDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_CylinkderDialog
{
public:
    QWidget *widget;
    QGridLayout *gridLayout;
    QVBoxLayout *verticalLayout_2;
    QLineEdit *radiueEdit;
    QLineEdit *heightEdit;
    QLineEdit *volumeEdit;
    QPushButton *calButton;
    QVBoxLayout *verticalLayout;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QPushButton *exitButton;

    void setupUi(QDialog *CylinkderDialog)
    {
        if (CylinkderDialog->objectName().isEmpty())
            CylinkderDialog->setObjectName(QString::fromUtf8("CylinkderDialog"));
        CylinkderDialog->resize(530, 396);
        widget = new QWidget(CylinkderDialog);
        widget->setObjectName(QString::fromUtf8("widget"));
        widget->setGeometry(QRect(80, 90, 381, 231));
        gridLayout = new QGridLayout(widget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        radiueEdit = new QLineEdit(widget);
        radiueEdit->setObjectName(QString::fromUtf8("radiueEdit"));

        verticalLayout_2->addWidget(radiueEdit);

        heightEdit = new QLineEdit(widget);
        heightEdit->setObjectName(QString::fromUtf8("heightEdit"));

        verticalLayout_2->addWidget(heightEdit);

        volumeEdit = new QLineEdit(widget);
        volumeEdit->setObjectName(QString::fromUtf8("volumeEdit"));

        verticalLayout_2->addWidget(volumeEdit);


        gridLayout->addLayout(verticalLayout_2, 0, 1, 1, 2);

        calButton = new QPushButton(widget);
        calButton->setObjectName(QString::fromUtf8("calButton"));
        QFont font;
        font.setPointSize(14);
        calButton->setFont(font);

        gridLayout->addWidget(calButton, 2, 0, 1, 1);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        label = new QLabel(widget);
        label->setObjectName(QString::fromUtf8("label"));
        label->setFont(font);

        verticalLayout->addWidget(label);

        label_2 = new QLabel(widget);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setFont(font);

        verticalLayout->addWidget(label_2);

        label_3 = new QLabel(widget);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setFont(font);

        verticalLayout->addWidget(label_3);


        gridLayout->addLayout(verticalLayout, 0, 0, 1, 1);

        exitButton = new QPushButton(widget);
        exitButton->setObjectName(QString::fromUtf8("exitButton"));
        exitButton->setFont(font);

        gridLayout->addWidget(exitButton, 2, 2, 1, 1);

#if QT_CONFIG(shortcut)
        label->setBuddy(radiueEdit);
        label_2->setBuddy(heightEdit);
        label_3->setBuddy(volumeEdit);
#endif // QT_CONFIG(shortcut)

        retranslateUi(CylinkderDialog);

        QMetaObject::connectSlotsByName(CylinkderDialog);
    } // setupUi

    void retranslateUi(QDialog *CylinkderDialog)
    {
        CylinkderDialog->setWindowTitle(QCoreApplication::translate("CylinkderDialog", "Dialog", nullptr));
        calButton->setText(QCoreApplication::translate("CylinkderDialog", "\350\256\241\347\256\227", nullptr));
        label->setText(QCoreApplication::translate("CylinkderDialog", "\345\234\206\346\237\261\344\275\223\345\215\212\345\276\204:", nullptr));
        label_2->setText(QCoreApplication::translate("CylinkderDialog", "\345\234\206\346\237\261\344\275\223\351\253\230:", nullptr));
        label_3->setText(QCoreApplication::translate("CylinkderDialog", "\345\234\206\346\237\261\344\275\223\344\275\223\347\247\257:", nullptr));
        exitButton->setText(QCoreApplication::translate("CylinkderDialog", "\351\200\200\345\207\272", nullptr));
    } // retranslateUi

};

namespace Ui {
    class CylinkderDialog: public Ui_CylinkderDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CYLINKDERDIALOG_H
