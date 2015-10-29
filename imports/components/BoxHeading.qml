import QtQuick 2.0
import utils 1.0

Row {
    id: root

    property color color: Style.blueViv
    property alias fontSize: headingText.font.pixelSize
    property alias text: headingText.text
    property alias boxWidth: box.width
    property alias boxHeight: box.height

    spacing: 10

    Rectangle {
        id: box
        anchors.bottom: headingText.baseline
        anchors.bottomMargin: 0
        width: 100
        height: 16
        color: root.color
    }

    Text {
        id: headingText
        font.family: "Source Sans Pro"
        font.pixelSize: 22
        font.weight: Font.Bold
        color: root.color
    }
}
