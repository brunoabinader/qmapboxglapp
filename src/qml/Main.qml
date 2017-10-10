import QtGraphicalEffects 1.0
import QtLocation 5.9
import QtPositioning 5.0
import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

import com.mapbox.cheap_ruler 1.0
import "qrc:/qml"

ApplicationWindow {
    id: window

    property var navigating: true

    title: "Mapbox GL for Qt 5.9"
    visible: true
    visibility: ApplicationWindow.FullScreen

    Item {
        anchors.fill: parent

        StatusBar {
            id: statusBar
            anchors.left: parent.left
            anchors.right: parent.right

            z: 1
        }

        MapWindow {
            anchors.top: statusBar.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            z: 0

            traffic: bottomBar.traffic
            night: bottomBar.night
        }

        BottomBar {
            id: bottomBar

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            z: 1
        }
    }
}
