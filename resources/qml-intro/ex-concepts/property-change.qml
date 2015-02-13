import QtQuick 2.0

Rectangle {
    width: 200; height: 100
    color: "lightblue"
    
    TextInput {
        x: 20; y: 20
        width: 160
        font.pixelSize: 32
        text: "Qt Quick"
        focus: true
        onTextChanged: color = "green"
    }
}
