import QtQuick 2.0

Item {
    id: root
    width: 100; height: 150

    Rectangle {
        id: groove
        x: 10; y: 25
        width: 50; height: 100
        color: "gray"
        border.color: "lightgray"
        border.width: 4

        MouseArea {
            anchors.fill: parent
            onClicked: root.state == "off" ? root.state = "on"
                                           : root.state = "off"
        }
    }

    Rectangle {
        id: handle
        x: 15
        width: 40; height: 30
        color: "lightgray"
    }

    states: [
        State { name: "off"
                PropertyChanges { target: handle; y: 30 } },
        State { name: "on"
                PropertyChanges { target: handle; y: 90 } }
    ]

    state: "off"
}
