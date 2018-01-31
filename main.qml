import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: root
    visible: true
    width: 800
    height: 480
    title: qsTr("Benkins Front Panel")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        anchors.leftMargin: navDrawer.width
        orientation: Qt.Vertical
        currentIndex: navDrawer.navIndex
        onCurrentIndexChanged: navDrawer.changeIndex(currentIndex)
        interactive: false

        PageSkyss {
            id: pageSkyss
        }

        PageYr {
            id: pageYr
        }

        PageTrello {
            id: pageTrello
        }
    }

    NavDrawer {
        id: navDrawer
        edge: Qt.LeftEdge
        width: root.width * 0.13
        height: root.height
    }

    OptionDrawer {
        id: optionDrawer
        edge: Qt.RightEdge
        width: root.width * 0.13
        height: root.height
    }
}
