import QtQuick 2.0

Item {
    id: window
    width: 800
    height: 800

    Rectangle {
        id: rectangle1
        x: 0; y: 0
        width: window.width
        height: window.height/2
        color: "lightblue"

        Rectangle {
            x: 100
            y: rectangle1.height - 50
            width: 200
            height: 100
        }
    }

    Rectangle {
        id: rectangle2
        x: 0; y:rectangle1.height
        width: window.width
        height: window.height - rectangle1.height
        color: "green"

        Rectangle {
            x: -50
            y: 100
            width: 200
            height: 100
            color: "black"
        }
    }
}
