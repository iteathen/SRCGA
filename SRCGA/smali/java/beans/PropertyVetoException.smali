.class public Ljava/beans/PropertyVetoException;
.super Ljava/lang/Exception;
.source "PropertyVetoException.java"


# static fields
.field private static final serialVersionUID:J = 0x1cc6aed8726ccf4L


# instance fields
.field private evt:Ljava/beans/PropertyChangeEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljava/beans/PropertyVetoException;
    move-object v1, p1

    .local v1, "mess":Ljava/lang/String;
    move-object v2, p2

    .local v2, "evt":Ljava/beans/PropertyChangeEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 47
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/beans/PropertyVetoException;->evt:Ljava/beans/PropertyChangeEvent;

    .line 48
    return-void
.end method


# virtual methods
.method public getPropertyChangeEvent()Ljava/beans/PropertyChangeEvent;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljava/beans/PropertyVetoException;
    move-object v1, v0

    iget-object v1, v1, Ljava/beans/PropertyVetoException;->evt:Ljava/beans/PropertyChangeEvent;

    move-object v0, v1

    .end local v0    # "this":Ljava/beans/PropertyVetoException;
    return-object v0
.end method
