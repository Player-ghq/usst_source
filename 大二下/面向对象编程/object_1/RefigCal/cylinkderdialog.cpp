#include "cylinkderdialog.h"
#include "ui_cylinkderdialog.h"

CylinkderDialog::CylinkderDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::CylinkderDialog)
{
    ui->setupUi(this);
}

CylinkderDialog::~CylinkderDialog()
{
    delete ui;
}
