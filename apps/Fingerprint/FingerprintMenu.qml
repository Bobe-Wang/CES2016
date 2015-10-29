import QtQuick 2.0
import components 1.0
import system 1.0
import utils 1.0

Item {
    anchors.fill: parent

    signal openProfile()
    signal createProfile()
    signal deleteProfile()

    Text {
        y: 90
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 55
        color: Style.orangeViv
        text: "Fingerprint Options"
    }

    Column {
        y: 320
        spacing: 110
        anchors.horizontalCenter: parent.horizontalCenter

        BoxButton {
            height: 70
            width: 360
            shadow: "in"
            color: Style.greenViv
            text: "Open Profile"
            onClicked: openProfile()
        }

        BoxButton {
            height: 70
            width: 360
            shadow: "in"
            color: Style.yellowViv
            text: "Create New Profile"
            onClicked: createProfile()
        }

        BoxButton {
            height: 70
            width: 360
            shadow: "in"
            color: Style.orangeViv
            text: "Delete Profile"
            onClicked: deleteProfile()
        }
    }
}
