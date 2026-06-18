import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import org.kde.kirigami as Kirigami
import org.kde.kcmutils as KCM

KCM.SimpleKCM {
    id: configPage

    property alias cfg_fontFamily: fontFamily.currentText
    property alias cfg_fontSize: fontSize.value
    property alias cfg_colorScheme: colorScheme.currentText
    property alias cfg_opacity: opacity.value
    property alias cfg_showScrollbar: showScrollbar.checked
    property alias cfg_initialDirectory: initialDirectory.text
    property alias cfg_shellCommand: shellCommand.text
    property alias cfg_skinPreset: skinPreset.currentText
    property alias cfg_backgroundColor: backgroundColor.text
    property alias cfg_borderColor: borderColor.text
    property alias cfg_borderWidth: borderWidth.value
    property alias cfg_borderRadius: borderRadius.value
    property alias cfg_padding: padding.value

    Kirigami.FormLayout {
        Layout.fillWidth: true

        ComboBox {
            id: skinPreset
            model: ["default", "catppuccin", "nord", "dracula", "gruvbox", "transparent"]
            Kirigami.FormData.label: "Skin Preset"
        }

        RowLayout {
            ComboBox {
                id: fontFamily
                model: ["Monospace", "Fira Code", "JetBrains Mono", "Source Code Pro", "Ubuntu Mono", "Hack"]
                editable: true
                Kirigami.FormData.label: "Font Family"
            }
            SpinBox {
                id: fontSize
                from: 6
                to: 72
                value: 12
                Kirigami.FormData.label: "Font Size"
            }
        }

        ComboBox {
            id: colorScheme
            model: [
                "Linux", "Solarized", "Solarized Light",
                "Nord", "Dracula", "Catppuccin",
                "Gruvbox", "Gruvbox Light",
                "One Dark", "One Light",
                "Monokai", "Tokyo Night",
                "Tango", "Vibrant Ink"
            ]
            Kirigami.FormData.label: "Color Scheme"
        }

        Slider {
            id: opacity
            from: 0.1
            to: 1.0
            value: 1.0
            stepSize: 0.05
            Kirigami.FormData.label: "Opacity"
        }

        CheckBox {
            id: showScrollbar
            text: "Show scrollbar"
            checked: true
            Kirigami.FormData.label: "Scrollbar"
        }

        TextField {
            id: initialDirectory
            text: "$HOME"
            placeholderText: "$HOME"
            Kirigami.FormData.label: "Initial Directory"
        }

        TextField {
            id: shellCommand
            placeholderText: "Leave empty for default shell"
            Kirigami.FormData.label: "Custom Shell"
        }

        Kirigami.Separator {
            Kirigami.FormData.label: "Appearance"
        }

        TextField {
            id: backgroundColor
            text: "#1e1e2e"
            placeholderText: "#1e1e2e"
            Kirigami.FormData.label: "Background Color"
        }

        TextField {
            id: borderColor
            text: "#313244"
            placeholderText: "#313244"
            Kirigami.FormData.label: "Border Color"
        }

        RowLayout {
            SpinBox {
                id: borderWidth
                from: 0
                to: 10
                value: 1
                Kirigami.FormData.label: "Border Width"
            }
            SpinBox {
                id: borderRadius
                from: 0
                to: 32
                value: 4
                Kirigami.FormData.label: "Border Radius"
            }
            SpinBox {
                id: padding
                from: 0
                to: 32
                value: 4
                Kirigami.FormData.label: "Padding"
            }
        }
    }
}
