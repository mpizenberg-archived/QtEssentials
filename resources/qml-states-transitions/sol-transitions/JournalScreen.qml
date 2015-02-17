import QtQuick 2.0

Rectangle {
    width: parent.width; height: parent.height
    color: "darkgreen"
    property bool showing: true

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 8
        text: "Journal"
        color: "white"
    }
}

