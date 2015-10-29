/*
 *   Copyright (C) 2015 Pelagicore AB
 *   All rights reserved.
 */

pragma Singleton
import QtQuick 2.2

QtObject {
    property bool debugMode: false
    property bool debugFill: false

    // Primary colors
    property color orangeLt: "#ffd38c"
    property color orangeViv: "#fe9c00"
    property color blueLt: "#b2f0ff"
    property color blueViv: "#53b5ce"
    // Secondary colors
    property color yellowLt: "#ffffb2"
    property color yellowViv: "#ffff00"
    property color greenLt: "#cdffb2"
    property color greenViv: "#59ff00"
    // Neutral colors
    property color white: "#ffffff"
    property color grey: "#c4c4c4"
    property color black: "#000000"
    property color overlay: Qt.rgba(0, 0, 0, 0.8)

    function getGfxPath() {
        return Qt.resolvedUrl("../assets/")
    }

    function gfx(name) {
        return Qt.resolvedUrl("../../images/" + name )
    }
}
