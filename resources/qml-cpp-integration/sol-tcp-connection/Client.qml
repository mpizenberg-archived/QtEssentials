import QtQuick 2.0
import TCP 1.0

ChatWindow {
    width: 400; height: 400
    type : TcpConnectionElement.Client
    port : 4242
    hostName : "localhost"
}
