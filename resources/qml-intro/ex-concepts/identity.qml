import QtQuick 2.0

Item {
    width: 300; height: 115

    Text {
        id: title
        x: 50; y: 25
        text: "Qt Quick"
        font.family: "Helvetica"; font.pixelSize: 50
    }

    Rectangle {
        x: 50; y: 75; height: 5
        width: title.width
        color: "green"
    }
}
