import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "lightblue"

    Rectangle {
        color: "green"
        width: height
        NumberAnimation on height {
            from: 0; to: 400
            duration: 1000
            running: true
        }
    }
}
