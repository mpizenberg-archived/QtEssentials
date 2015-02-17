import QtQuick 2.0 as MyQt

MyQt.Rectangle {
    width: 150; height: 50; color: "lightblue"

    MyQt.Text {
        anchors.centerIn: parent
        text: "Hello Qt!"
        font.pixelSize: 32
    }
}
