import QtQuick 2.9
import QtQuick.Controls 2.2
import QtWebEngine 1.0

Page {
    title: "Yr"
    //property string urlYr: "http://www.yr.no/place/Norway/Hordaland/Bergen/Bergen/external_box_hour_by_hour.html"
    property string urlYr: "https://www.yr.no/en/detailed/graph/1-92416/Norway/Hordaland/Bergen/Bergen"

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
