/*************************************************************************
 *
 * Copyright (c) 2012 Digia Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef CHARTITEM_H
#define CHARTITEM_H

#include <QQuickPaintedItem>

class BarItem;

class ChartItem : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(QQmlListProperty<BarItem> bars READ bars NOTIFY barsChanged)
    Q_CLASSINFO("DefaultProperty", "bars")

public:
    ChartItem(QQuickItem *parent = 0);
    void paint(QPainter *painter);

    QQmlListProperty<BarItem> bars();

signals:
    void barsChanged();

private:
    static void append_bar(QQmlListProperty<BarItem> *list, BarItem *bar);
    QList<BarItem*> m_bars;
};

#endif
