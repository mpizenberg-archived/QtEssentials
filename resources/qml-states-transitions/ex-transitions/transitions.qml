import QtQuick 2.0

Rectangle {
  width: 150; height: 250

  Rectangle {
      id: stopLight
      x: 25; y: 15; width: 100; height: 100
  }
  Rectangle {
      id: goLight
      x: 25; y: 135; width: 100; height: 100
  }

  states: [
    State {
      name: "stop"
      PropertyChanges { target: stopLight; color: "red" }
      PropertyChanges { target: goLight; color: "black" }
    },
    State {
      name: "go"
      PropertyChanges { target: stopLight; color: "black" }
      PropertyChanges { target: goLight; color: "green" }
    }
  ]

  state: "stop"

  MouseArea {
      anchors.fill: parent
      onClicked: parent.state == "stop" ?
                 parent.state = "go" : parent.state = "stop"
  }

  transitions: [
    Transition {
        from: "stop"; to: "go"
        PropertyAnimation {
            target: stopLight
            properties: "color"; duration: 1000
        }
    },
    Transition {
        from: "go"; to: "stop"
        PropertyAnimation {
            target: goLight
            properties: "color"; duration: 1000
        }
    } ]
}
