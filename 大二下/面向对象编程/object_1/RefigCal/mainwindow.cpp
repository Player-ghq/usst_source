#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_action_triangle_triggered()
{
    static TriangleDialog *tri = new TriangleDialog(this);
    tri->show();
}


void MainWindow::on_action_cylinder_triggered()
{
    static CylinkderDialog *cy = new CylinkderDialog(this);
    cy->show();
}

