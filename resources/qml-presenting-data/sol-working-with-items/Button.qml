import QtQuick 2.0

Rectangle {
    property alias text: label.text
    signal clicked

    radius: 5; smooth: true
    width: label.width + 16
    height: label.height + 4

    Text {
        id: label
        anchors.centerIn: parent
        text: ""
        font.pixelSize: 16
    }
    MouseArea {
        anchors.fill: parent
        onClicked: parent.clicked()
    }
}
