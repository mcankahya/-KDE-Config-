import QtQuick 2.0
import org.kde.plasma.plasmoid

Item {
    property string customColor: "#ffffff"
    property string textf: "fing"
    signal propertyChanged()


    onCustomColorChanged: {
        propertyChanged(customColor)
    }
}
