#ifndef CYLINKDERDIALOG_H
#define CYLINKDERDIALOG_H

#include <QDialog>

namespace Ui {
class CylinkderDialog;
}

class CylinkderDialog : public QDialog
{
    Q_OBJECT

public:
    explicit CylinkderDialog(QWidget *parent = nullptr);
    ~CylinkderDialog();

private:
    Ui::CylinkderDialog *ui;
};

#endif // CYLINKDERDIALOG_H
