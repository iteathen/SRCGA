.class public final Ljavafx/beans/WeakInvalidationListener;
.super Ljava/lang/Object;
.source "WeakInvalidationListener.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;
.implements Ljavafx/beans/WeakListener;


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/InvalidationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/beans/InvalidationListener;)V
    .locals 7
    .param p1    # Ljavafx/beans/InvalidationListener;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "listener"
        .end annotation
    .end param

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/WeakInvalidationListener;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v2, v1

    if-nez v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Listener must be specified."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/beans/WeakInvalidationListener;->ref:Ljava/lang/ref/WeakReference;

    .line 66
    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/WeakInvalidationListener;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/WeakInvalidationListener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/InvalidationListener;

    move-object v2, v3

    .line 82
    .local v2, "listener":Ljavafx/beans/InvalidationListener;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 83
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_0
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/WeakInvalidationListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/WeakInvalidationListener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/WeakInvalidationListener;
    return v0

    .restart local v0    # "this":Ljavafx/beans/WeakInvalidationListener;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
