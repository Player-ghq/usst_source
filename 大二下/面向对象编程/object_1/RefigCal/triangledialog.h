#ifndef TRIANGLEDIALOG_H
#define TRIANGLEDIALOG_H

#include <QDialog>
#include <triangle.h>

namespace Ui {
class TriangleDialog;
}

class TriangleDialog : public QDialog
{
    Q_OBJECT

public:
    explicit TriangleDialog(QWidget *parent = nullptr);
    ~TriangleDialog();

private slots:
    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

private:
    Ui::TriangleDialog *ui;
};

#endif // TRIANGLEDIALOG_H
