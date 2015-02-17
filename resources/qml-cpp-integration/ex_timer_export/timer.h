#ifndef TIMER_H
#define TIMER_H

#include <QObject>

class QTimer;

class Timer : public QObject
{
    Q_OBJECT
    Q_PROPERTY( int interval READ interval WRITE setInterval NOTIFY intervalChanged )
    Q_PROPERTY( bool active READ isActive NOTIFY activeChanged )

public:
    explicit Timer( QObject* parent = 0 );

    void setInterval( int msec );
    int interval();

    bool isActive();

    Q_INVOKABLE int randomInterval( int min, int max ) const;

public slots:
    void start();
    void stop();

signals:
    void timeout();

    void intervalChanged();
    void activeChanged();

private:
    QTimer* m_timer;
};

#endif // TIMER_H
