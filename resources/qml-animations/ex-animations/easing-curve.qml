import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "lightblue"

    Image {
        x: 220
        source: "../images/backbutton.png"
        NumberAnimation on y {
            from: 0; to: 350
            duration: 1000
            easing.type: "OutExpo"
        }
    }
}
