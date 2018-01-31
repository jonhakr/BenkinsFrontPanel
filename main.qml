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

        WebPage {
            id: pageSkyss
            startUrl: "https://avgangsvisning.skyss.no/board/#/?stops=12011493,12011492&viewFreq=10000&terminal=true&colors=dark&name=Wergeland"
        }

        WebPage {
            id: pageYr
            startUrl: "https://www.yr.no/en/list/daily/11-31379/Norway/Hordaland/Bergen/Wergeland"
            refreshInterval: 60
        }

        WebPage {
            id: pageTrello
            startUrl: "https://trello.com/b/FYw2hMrL/handleliste.html"
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
