#include "tcpconnectionelement.h"
#include <QHostAddress>

#include <QTcpServer>
#include <QTcpSocket>

TcpConnectionElement::TcpConnectionElement(QObject *parent)
    : QObject(parent), m_hostName("127.0.0.1")
{
}

void TcpConnectionElement::sendData(const QString &data)
{
    m_tcpSocket->write( data.toUtf8() + "\n" );
}

int TcpConnectionElement::port() const
{
    return m_port;
}

void TcpConnectionElement::setPort(int port)
{
    if (m_port != port) {
        m_port = port;
        emit portChanged();
    }
}

QString TcpConnectionElement::hostName() const
{
    return m_hostName;
}

void TcpConnectionElement::setHostName(const QString &hostName)
{
    if (m_hostName != hostName) {
        m_hostName = hostName;
        emit hostNameChanged();
    }
}

TcpConnectionElement::ConnectionType TcpConnectionElement::connectionType() const
{
    return m_connectionType;
}

void TcpConnectionElement::setConnectionType(ConnectionType connectionType)
{
    if (m_connectionType != connectionType) {
        m_connectionType = connectionType;
        emit connectionTypeChanged();
    }
}

void TcpConnectionElement::initialize()
{
    if ( m_connectionType == Server ) {
        m_tcpServer = new QTcpServer;
        m_tcpServer->listen( QHostAddress(m_hostName), m_port );
        connect( m_tcpServer, SIGNAL( newConnection() ), this, SLOT( slotConnection() ) );
    }
    else {
        m_tcpSocket = new QTcpSocket(this);
        m_tcpSocket->connectToHost( m_hostName, m_port );
        connect( m_tcpSocket, SIGNAL(readyRead()), this, SLOT(receivedData()) );
    }
}

void TcpConnectionElement::slotConnection()
{
    m_tcpSocket = m_tcpServer->nextPendingConnection();
    connect( m_tcpSocket, SIGNAL(readyRead()), this, SLOT(receivedData()) );
}

void TcpConnectionElement::receivedData()
{
    const QString txt = QString::fromUtf8(m_tcpSocket->readAll());
    emit dataReceived( txt );
}


