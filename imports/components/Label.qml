import QtQuick 2.0
import utils 1.0

Item {
    // Tracer {}
    width: childrenRect.width
    height: childrenRect.height
    property alias text: text.text
    property alias label: text
    property alias fontSize: text.font.pixelSize
    property alias fontColor: text.color

    Text {
        id: text
        color: "#ddd"
        font.family: "Source Sans Pro"
        font.pixelSize: 40
        font.capitalization: Font.AllUppercase
        font.weight: Font.Bold
     }
}
