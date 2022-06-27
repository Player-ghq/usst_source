/********************************************************************************
** Form generated from reading UI file 'triangledialog.ui'
**
** Created by: Qt User Interface Compiler version 6.3.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TRIANGLEDIALOG_H
#define UI_TRIANGLEDIALOG_H

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

class Ui_TriangleDialog
{
public:
    QWidget *widget;
    QGridLayout *gridLayout;
    QVBoxLayout *verticalLayout;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QVBoxLayout *verticalLayout_2;
    QLineEdit *lengthEdit;
    QLineEdit *heightEdit;
    QLineEdit *areaEdit;
    QPushButton *pushButton;
    QPushButton *pushButton_2;

    void setupUi(QDialog *TriangleDialog)
    {
        if (TriangleDialog->objectName().isEmpty())
            TriangleDialog->setObjectName(QString::fromUtf8("TriangleDialog"));
        TriangleDialog->resize(585, 417);
        widget = new QWidget(TriangleDialog);
        widget->setObjectName(QString::fromUtf8("widget"));
        widget->setGeometry(QRect(40, 70, 471, 281));
        gridLayout = new QGridLayout(widget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        label = new QLabel(widget);
        label->setObjectName(QString::fromUtf8("label"));
        QFont font;
        font.setPointSize(14);
        label->setFont(font);
        label->setTextFormat(Qt::AutoText);

        verticalLayout->addWidget(label);

        label_2 = new QLabel(widget);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setFont(font);
        label_2->setTextFormat(Qt::AutoText);

        verticalLayout->addWidget(label_2);

        label_3 = new QLabel(widget);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setFont(font);
        label_3->setTextFormat(Qt::AutoText);

        verticalLayout->addWidget(label_3);


        gridLayout->addLayout(verticalLayout, 0, 0, 1, 1);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        lengthEdit = new QLineEdit(widget);
        lengthEdit->setObjectName(QString::fromUtf8("lengthEdit"));

        verticalLayout_2->addWidget(lengthEdit);

        heightEdit = new QLineEdit(widget);
        heightEdit->setObjectName(QString::fromUtf8("heightEdit"));

        verticalLayout_2->addWidget(heightEdit);

        areaEdit = new QLineEdit(widget);
        areaEdit->setObjectName(QString::fromUtf8("areaEdit"));

        verticalLayout_2->addWidget(areaEdit);


        gridLayout->addLayout(verticalLayout_2, 0, 1, 1, 2);

        pushButton = new QPushButton(widget);
        pushButton->setObjectName(QString::fromUtf8("pushButton"));

        gridLayout->addWidget(pushButton, 1, 0, 1, 1);

        pushButton_2 = new QPushButton(widget);
        pushButton_2->setObjectName(QString::fromUtf8("pushButton_2"));

        gridLayout->addWidget(pushButton_2, 1, 1, 1, 2);

#if QT_CONFIG(shortcut)
        label->setBuddy(lengthEdit);
        label_2->setBuddy(heightEdit);
        label_3->setBuddy(areaEdit);
#endif // QT_CONFIG(shortcut)

        retranslateUi(TriangleDialog);

        QMetaObject::connectSlotsByName(TriangleDialog);
    } // setupUi

    void retranslateUi(QDialog *TriangleDialog)
    {
        TriangleDialog->setWindowTitle(QCoreApplication::translate("TriangleDialog", "Dialog", nullptr));
        label->setText(QCoreApplication::translate("TriangleDialog", "\344\270\211\350\247\222\345\275\242\345\272\225\350\276\271\351\225\277(&L)", nullptr));
        label_2->setText(QCoreApplication::translate("TriangleDialog", "\344\270\211\350\247\222\345\275\242\345\272\225\350\276\271\351\253\230(&H)", nullptr));
        label_3->setText(QCoreApplication::translate("TriangleDialog", "\344\270\211\350\247\222\345\275\242\351\235\242\347\247\257", nullptr));
        pushButton->setText(QCoreApplication::translate("TriangleDialog", "\350\256\241\347\256\227", nullptr));
        pushButton_2->setText(QCoreApplication::translate("TriangleDialog", "\351\200\200\345\207\272", nullptr));
    } // retranslateUi

};

namespace Ui {
    class TriangleDialog: public Ui_TriangleDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TRIANGLEDIALOG_H
