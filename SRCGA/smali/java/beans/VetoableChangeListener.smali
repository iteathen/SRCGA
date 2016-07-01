.class public interface abstract Ljava/beans/VetoableChangeListener;
.super Ljava/lang/Object;
.source "VetoableChangeListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract vetoableChange(Ljava/beans/PropertyChangeEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation
.end method
