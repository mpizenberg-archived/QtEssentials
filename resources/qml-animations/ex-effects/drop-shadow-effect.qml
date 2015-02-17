import QtQuick 2.0

Rectangle {
    width: 400
    height: 200
    color: "lightblue"

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text: "Qt Quick"; font.pixelSize: 64
        effect: DropShadow {}
    }
}
