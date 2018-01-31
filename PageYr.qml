import QtQuick 2.9
import QtQuick.Controls 2.2
import QtWebEngine 1.0

Page {
    title: "Yr"
    property string urlYr: "https://www.yr.no/en/list/daily/11-31379/Norway/Hordaland/Bergen/Wergeland"

    WebEngineView {
        id: webYr
        anchors.fill: parent
        url: urlYr
    }

    Timer {
        interval: 60000
        running: true
        repeat: true
        onTriggered: reloadPage()
    }

    function reloadPage() {
        webYr.url = urlYr
    }

}
