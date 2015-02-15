import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "lightblue"

    TextInput {
        x: 50; y: 100; width: 300
        text: "Editable text"
        font.family: "Helvetica"; font.pixelSize: 32
    }
}
