import QtQuick 2.0

Item {
    width: childrenRect.width
    height: childrenRect.height

    property real value: 0

    Image {
        y: 15
        source: "images/fan_icon_off.png"
    }

    Image {
        id: fanBar
        x: 100
        source: "images/fan_bar_off.png"
    }

    Image {
        x: 100
        width: value * fanBar.width
        fillMode: Image.PreserveAspectCrop
        horizontalAlignment: Image.AlignLeft
        source: "images/fan_bar_on.png"

        Image {
            width: 20
            height: width
            anchors.verticalCenter: parent.bottom
            anchors.verticalCenterOffset: -1
            anchors.horizontalCenter: parent.right
            source: "images/drag_knob.svg"
        }
    }

    MouseArea {
        x: 100
        width: fanBar.width
        height: parent.height

        onPositionChanged: {
            value = Math.min(Math.max(mouse.x / fanBar.width, 0), 1)
        }
    }
}
