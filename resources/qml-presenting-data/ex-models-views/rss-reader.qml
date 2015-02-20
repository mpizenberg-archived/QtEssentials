import QtQuick 2.0
import QtQuick.XmlListModel 2.0

Rectangle {
    width: 400; height: 300
    color: "#303040"

    XmlListModel {
        id: rssModel
        source: "http://qt.nokia.com/about/news/news/RSS"
        namespaceDeclarations: "declare default element namespace 'http://purl.org/rss/1.0/';"
        query: "//item"

        XmlRole { name: "title"; query: "title/string()" }
        XmlRole { name: "link"; query: "link/string()" }
        XmlRole { name: "description"; query: "description/string()" }
    }

    TitleDelegate {
        id: xmlDelegate
    }

    ListView {
        anchors.fill: parent
        anchors.margins: 4
        model: rssModel
        delegate: xmlDelegate
    }
}
