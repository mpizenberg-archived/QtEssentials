import QtQuick 2.0

Rectangle {
    width: parent.width; height: parent.height
    color: "brown"

    Text {
        id: title
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 8
        text: "Appointments"
        color: "white"
    }
}
