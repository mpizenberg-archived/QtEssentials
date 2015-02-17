import QtQuick 2.0

Item {

    Rectangle {
        color: "#9c9898"; border.width: 0; border.color: "#000000"; anchors.fill: parent
    }

    Text {
        id : title
        text: titleText()
        anchors { top : parent.top; left : parent.left; right : parent.right }
        height : 30
    }

    Display {
        id: output
        anchors { top : title.bottom; left : parent.left; right : parent.right; bottom : entryRect.top }
        anchors.bottomMargin: 2
    }

    LineEdit {
        id: entryRect
        x: 0; y: 83; width: 100
        focus: true
        anchors { bottom : parent.bottom; left : parent.left; right : parent.right; }

        onTextEntered: {
            output.text += "Me > " + text + "\n"
        }
    }

    function titleText() {
        return "Title"
    }
}
