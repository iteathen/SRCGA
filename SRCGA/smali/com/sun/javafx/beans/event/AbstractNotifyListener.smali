.class public abstract Lcom/sun/javafx/beans/event/AbstractNotifyListener;
.super Ljava/lang/Object;
.source "AbstractNotifyListener.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# instance fields
.field private final weakListener:Ljavafx/beans/WeakInvalidationListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v1, v0

    new-instance v2, Ljavafx/beans/WeakInvalidationListener;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v2, v1, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->weakListener:Ljavafx/beans/WeakInvalidationListener;

    return-void
.end method


# virtual methods
.method public getWeakListener()Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->weakListener:Ljavafx/beans/WeakInvalidationListener;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    return-object v0
.end method
