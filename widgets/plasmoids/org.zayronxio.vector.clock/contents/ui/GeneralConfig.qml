import QtQuick 2.15
import Qt.labs.platform
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import org.kde.plasma.core  as PlasmaCore

Item {
    id: configRoot

    signal configurationChanged

    property alias cfg_customColors: colorhex.color

    ColorDialog {
        id: colorDialog
        color: colorhex.color
        onAccepted: {
            colorhex.color = color
        }
    }

    ColumnLayout {
        spacing: units.smallSpacing * 2
        GridLayout {
            columns: 2
            Label {
                Layout.minimumWidth: configRoot.width/2
                text: "Color:"
                horizontalAlignment: Text.AlignRight
            }
            Rectangle {
                id: colorhex
                color: customColors
                border.color: "#B3FFFFFF"
                border.width: 1
                anchors.left: txt.right
                visible: txt.visible
                width: 64
                radius: 4
                height: 24
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        colorDialog.open()
                    }
                }
            }
        }
}

}
