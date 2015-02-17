/*************************************************************************
 *
 * Copyright (c) 2012 Digia Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

#ifndef ELLIPSEITEM_H
#define ELLIPSEITEM_H

#include <QQuickPaintedItem>

class EllipseItem : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY( QColor color READ color WRITE setColor NOTIFY colorChanged )
    Q_PROPERTY( Style style READ style WRITE setStyle NOTIFY styleChanged )
    Q_ENUMS( Style )

public:
    enum Style {
        Outline,
        Filled
    };

    explicit EllipseItem( QQuickItem *parent = 0 );
    void paint( QPainter *painter );

    QColor color() const;
    void setColor( const QColor &newColor );
    Style style() const;
    void setStyle( const Style &newStyle );

signals:
    void colorChanged();
    void styleChanged();

private:
    QColor m_color;
    Style m_style;
};

#endif
