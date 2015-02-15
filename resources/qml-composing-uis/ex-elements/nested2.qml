import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "lightblue"

    Rectangle {
        x: 50; y: 50; width: 300; height: 300
        color: "green"

        Rectangle {
            x: 200; y: 150; width: 50; height: 50
            color: "white"
        }
    }
}
