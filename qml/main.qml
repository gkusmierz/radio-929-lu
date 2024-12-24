import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia

ApplicationWindow {
    id: window
    width: 600
    height: 1800
    visible: true
    title: "Radio 92.9 FM"
    flags: Qt.platform.os === "ios"? Qt.Window | Qt.MaximizeUsingFullscreenGeometryHint : Qt.Window

    function calculateLogoSize(scale=0.66) {
        if (background.width > background.height) {
            return background.height * scale
        }
        else {
            return background.width * scale
        }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            color: "#0197F6"
            Layout.fillWidth: true
            Layout.minimumHeight: 100
        }

        Rectangle {
            id: background
            color: "#0197F6"
            Layout.fillWidth: true
            Layout.fillHeight: true

            Image {
                id: logo
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                source: "qrc:/929.png"
                fillMode: Image.PreserveAspectFit
                width: calculateLogoSize(0.90)
            }
        }

        Rectangle {
            color: "#0197F6"
            Layout.fillWidth: true
            Layout.minimumHeight: 100

            Text {
                text: "Click Me!";
                font.pointSize: 24;
                width: 150; height: 50;

                MediaPlayer {
                    id: playMusic
                    source: "https://radio.929.lu"
                    audioOutput: AudioOutput {}
                }
                MouseArea {
                    anchors.fill: parent
                    onPressed:  { playMusic.play() }
                }
            }
        }
    }
}
