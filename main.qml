/****************************************************************************
**
** Copyright (C) 2015 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.2
import QtQuick.Controls 1.1
import QtWebView 1.0
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2


ApplicationWindow {
    title: qsTr("Coral Store")
    visible: true
    x: initialX
    y: initialY
    width: initialWidth
    height: initialHeight
    //set minimumSize
    minimumWidth : 1024
    minimumHeight : 768

    toolBar: ToolBar {
        id: navigationBar
        RowLayout {
            ToolButton {
                id: backButton
                iconSource: "images/left-32.png"
                onClicked: webView.goBack()
                enabled: webView.canGoBack
            }

            ToolButton {
                id: forwardButton
                iconSource: "images/right-32.png"
                onClicked: webView.goForward()
                enabled: webView.canGoForward
            }

            AnimatedImage {
                id: loading
                playing: webView.loading
                source: "images/loading.gif"
                //source: webView.loading ? "images/loading.gif" : "images/transparent.png"
            }

            Item { Layout.preferredWidth: 400 }

            ToolButton {
                id: categories
                iconSource: "images/categories.png"
                onClicked: {
                    webView.url = utils.fromUserInput("http://app.mi.com/")
                }
            }

            Item { Layout.preferredWidth: 20 }

            ToolButton {
                id: top
                iconSource: "images/top.png"
                onClicked: {
                    webView.url = utils.fromUserInput("http://app.mi.com/category/5")
                }
            }

            Item { Layout.preferredWidth: 20 }

            ToolButton {
                id: featured
                iconSource: "images/featured.png"
                onClicked: {
                    webView.url = utils.fromUserInput("http://app.mi.com/category/2")
                }
            }

            Item { Layout.preferredWidth: 20 }

            ToolButton {
                id: purchased
                iconSource: "images/purchased.png"
                onClicked: {
                    webView.url = utils.fromUserInput("http://app.mi.com/category/16")
                }
            }

            Item { Layout.preferredWidth: 20 }

            ToolButton {
                id: updates
                iconSource: "images/updates.png"
                onClicked: {
                    webView.url = utils.fromUserInput("http://app.mi.com/subjectList")
                }
            }
        }
    }

    WebView {
        id: webView
        anchors.fill: parent
        url: initialUrl
    }
}
