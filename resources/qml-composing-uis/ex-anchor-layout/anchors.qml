import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "lightblue"
    id: rectangle1

    Text {
        text: "Centered text"; color: "green"
        font.family: "Helvetica"; font.pixelSize: 32
        anchors.centerIn: rectangle1
    }
}
