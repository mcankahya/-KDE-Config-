/*
 * Copyright 2013  Bhushan Shah <bhush94@gmail.com>
 * Copyright 2013 Sebastian Kügler <sebas@kde.org>
 * Copyright 2015 Kai Uwe Broulik <kde@privat.broulik.de>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License or (at your option) version 3 or any later version
 * accepted by the membership of KDE e.V. (or its successor approved
 * by the membership of KDE e.V.), which shall act as a proxy
 * defined in Section 14 of version 3 of the license.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 */

import QtQuick 2.15
import QtQuick.Controls 2.15 as QtControls
import QtQuick.Layouts 1.15 as QtLayouts
import org.kde.kcmutils
// import org.kde.plasma.calendar 2.0 as PlasmaCalendar

import QtQuick.Dialogs 6.4
import QtQuick.Controls 2.15

SimpleKCM {
    id: beClockPage2
    // width: childrenRect.width
    // height: childrenRect.height

    signal configurationChanged


//     property alias cfg_textcolor: _text1.text
//     property alias cfg_textshadow: _text2.text
//     
//     property alias cfg_mincolor1: _min1.text
//     property alias cfg_mincolor2: _min2.text
//     property alias cfg_horacolor1: _hora1.text
//     property alias cfg_horacolor2: _hora2.text
//     property alias cfg_destello: flash.checked
//     property alias cfg_secondcolor1: _seconds1.text
//     property alias cfg_secondcolor2: _seconds2.text
//     property alias cfg_showsecondsring: secondsring.checked
//     property alias cfg_imagenbackground: imagenes.imagen
// 
//     property var logos: ["" ,"images/arch.png","images/debian.png","images/fedora.png","images/kde.png" ,"images/kubuntu.png","images/neon.png" ,"images/suse.png","images/ubuntu.png" ]
    
    property alias cfg_minsize: minwidthslider.value
    property alias cfg_minradius: minradiusslider.value
    property alias cfg_hoursize: hourwidthslider.value
    property alias cfg_hourradius: hourradiusslider.value
    property alias cfg_secsize: secwidthslider.value
    property alias cfg_secradius: secradiusslider.value
    
    
    QtLayouts.ColumnLayout {
		anchors.left: parent.left
		QtLayouts.Layout.fillWidth: true
		width: parent.width
		
		QtControls.GroupBox {
			QtLayouts.Layout.fillWidth: true
			width: beClockPage2.width
			title: i18n("Minutes:")
	        // flat: true
	        QtLayouts.ColumnLayout {
		        QtControls.Label { text: i18n("Width")}
				Slider {
					id:minwidthslider
					width: beClockPage2.width*0.9
					
					from: 5
					to: 100
					stepSize: 5
					// tickmarksEnabled: true
					
				    value: 10
				}
				QtControls.Label { text: i18n("Radius")}
				Slider {
					id:minradiusslider
					width: beClockPage2.width*0.9
					
					from: 5
					to: 100
					stepSize: 5
					// tickmarksEnabled: true
					
				    value: 85
				}
			}
		}
		QtControls.GroupBox {
			title: i18n("Hour:")
			QtLayouts.Layout.fillWidth: true
			width: beClockPage2.width
			
	        // flat: true
	        QtLayouts.ColumnLayout {
		        QtControls.Label { text: i18n("Width")}
				Slider {
					id:hourwidthslider
					width: beClockPage2.width*0.9
					
					from: 5
					to: 100
					stepSize: 5
					// tickmarksEnabled: true
					
				    value: 10
				}
				QtControls.Label { text: i18n("Radius")}
				Slider {
					id:hourradiusslider
					width: beClockPage2.width*0.9
					
					from: 5
					to: 100
					stepSize: 5
					// tickmarksEnabled: true
					
				    value: 70
				}
			}
		}
		QtControls.GroupBox {
			title: i18n("Seconds:")
			QtLayouts.Layout.fillWidth: true
			width: beClockPage2.width
			
	        // flat: true
	        QtLayouts.ColumnLayout {
		        QtControls.Label { text: i18n("Width")}
				Slider {
					id:secwidthslider
					width: beClockPage2.width*0.9
					
					from: 5
					to: 100
					stepSize: 5
					// tickmarksEnabled: true
					
				    value: 10
				}
				QtControls.Label { text: i18n("Radius")}
				Slider {
					id:secradiusslider
					width: beClockPage2.width*0.9
					
					from: 5
					to: 100
					stepSize: 5
					// tickmarksEnabled: true
					
				    value: 100
				}
			}
		}
	}


}
