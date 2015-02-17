#include "tcpconnectionelement.h"
#include <QHostAddress>

#include <QTcpServer>
#include <QTcpSocket>

TcpConnectionElement::TcpConnectionElement(ConnectionType connectionType, int port, const QString &hostName, QObject *parent)
    : QObject(parent)
{
        if ( connectionType == Server ) {
            m_tcpServer = new QTcpServer;
            m_tcpServer->listen( QHostAddress(hostName), port );
            connect( m_tcpServer, SIGNAL( newConnection() ), this, SLOT( slotConnection() ) );
        }
        else {
            m_tcpSocket = new QTcpSocket(this);
            m_tcpSocket->connectToHost( hostName, port );
            connect( m_tcpSocket, SIGNAL(readyRead()), this, SLOT(receivedData()) );
        }
        qDebug("Yes I'm alive!");
}

void TcpConnectionElement::sendData(const QString &data)
{
    m_tcpSocket->write( data.toUtf8() + "\n" );
}

/*

int TcpConnectionElement::port() const
{
    return m_port;
}

void TcpConnectionElement::setPort(int port)
{
    qDebug("Port set to %d", port );
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
    qDebug("Hostname set to %s", qPrintable(hostName));
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
    qDebug("Type set to %s", connectionType == Server ? "Server": "Client");
    if (m_connectionType != connectionType) {
        m_connectionType = connectionType;
        emit connectionTypeChanged();
    }
}
*/

void TcpConnectionElement::slotConnection()
{
    qDebug("Got a connection");
    m_tcpSocket = m_tcpServer->nextPendingConnection();
    connect( m_tcpSocket, SIGNAL(readyRead()), this, SLOT(receivedData()) );
}

void TcpConnectionElement::receivedData()
{
    const QString txt = QString::fromUtf8(m_tcpSocket->readAll());
    emit dataReceived( txt );
    qDebug("Received Data: %s", qPrintable(txt));
}


