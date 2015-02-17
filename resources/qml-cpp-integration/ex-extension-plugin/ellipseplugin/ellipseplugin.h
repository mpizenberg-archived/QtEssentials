/*************************************************************************
 *
 * Copyright (c) 2012 Digia Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef ELLIPSEPLUGIN_H
#define ELLIPSEPLUGIN_H

#include <QQmlExtensionPlugin>

class EllipsePlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface/1.0")
    
public:
    void registerTypes(const char *uri);
};

#endif

