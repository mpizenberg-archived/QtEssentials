import QtQuick 2.0

Rectangle {
    width: 250; height: 50; color: "#ccffcc"

    TextInput {
        id: textField
        text: "Enter text..."
        font.pointSize: 24
        anchors.left: parent.left
        anchors.leftMargin: 4
        anchors.verticalCenter: parent.verticalCenter
    }
    
    Image {
        id: clearButton
        source: "../images/clear.svg"
        anchors.right: parent.right
        anchors.rightMargin: 4
        anchors.verticalCenter: textField.verticalCenter

        MouseArea {
            anchors.fill: parent
            onClicked: textField.text = ""
        }
    }

    states: [
      State {
        name: "with text"
        when: textField.text != ""
        PropertyChanges { target: clearButton; opacity: 1.0 }
      },
      State {
        name: "without text"
        when: textField.text == ""
        PropertyChanges { target: clearButton; opacity: 0.25 }
        PropertyChanges { target: textField; focus: true }
      }
    ]
}
