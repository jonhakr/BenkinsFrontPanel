import QtQuick 2.9
import QtQuick.Controls 2.2
import QtWebEngine 1.0

Page {
    property string startUrl: "www.google.com"
    property int refreshInterval: 0 // Seconds

    WebEngineView {
        id: webView
        anchors.fill: parent
        url: startUrl
    }

    Timer {
        id: reloadTimer
        interval: refreshInterval * 1000
        running: refreshInterval > 0
        repeat: true
        onTriggered: reloadPage()
    }

    function reloadPage() {
        webView.url = startUrl
    }
}
