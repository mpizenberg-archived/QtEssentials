import QtQuick 2.0

Rectangle {
    width: 400; height: 400; color: "black"

    Grid {
        rows: 5; columns: 5; spacing: 10
        Repeater {
            model: 24
            Image {
                source: "../images/rocket.png"
            }
        }
    }
}
