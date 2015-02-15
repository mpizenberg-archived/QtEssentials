import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "black"

    Image {
        x: 150; y: 150
        source: "../images/rocket.png"
        scale: 2.0
        transformOrigin: Item.Top
    }
}
