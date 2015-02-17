#include "runtype.h"
#include "ui_runtype.h"

RunType::RunType(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::RunType)
{
    ui->setupUi(this);
    connect( ui->client, SIGNAL( clicked() ), this, SLOT( client() ));
    connect( ui->server, SIGNAL( clicked()), this, SLOT( server() ));
}

RunType::~RunType()
{
    delete ui;
}

RunType::Type RunType::getRunType()
{
    exec();
    return m_type;
}

void RunType::client()
{
    m_type = Client;
    accept();
}

void RunType::server()
{
    m_type = Server;
    accept();
}
