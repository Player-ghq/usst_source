#include "triangledialog.h"
#include "ui_triangledialog.h"

TriangleDialog::TriangleDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::TriangleDialog)
{
    ui->setupUi(this);
}

TriangleDialog::~TriangleDialog()
{
    delete ui;
}

void TriangleDialog::on_pushButton_clicked()
{
    QString lengthstring = ui->lengthEdit->text();
    QString heightstring = ui->heightEdit->text();
    Triangle triangle_1(lengthstring.toDouble(),heightstring.toDouble());
    double area = triangle_1.TriangleArea();
    ui->areaEdit->setText(QString::number(area,'f',2));
//    保留两位小数float

}




void TriangleDialog::on_pushButton_2_clicked()
{
    this->close();
}

