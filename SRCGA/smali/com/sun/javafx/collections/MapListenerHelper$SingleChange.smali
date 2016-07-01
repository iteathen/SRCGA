.class Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;
.super Lcom/sun/javafx/collections/MapListenerHelper;
.source "MapListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/MapListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/collections/MapListenerHelper",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/collections/MapChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/MapListenerHelper;-><init>()V

    .line 136
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;->listener:Ljavafx/collections/MapChangeListener;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/collections/MapListenerHelper$1;)V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/collections/MapChangeListener;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/collections/MapListenerHelper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;-><init>(Ljavafx/collections/MapChangeListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/collections/MapListenerHelper$Generic;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;->listener:Ljavafx/collections/MapChangeListener;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/collections/MapListenerHelper$Generic;-><init>(Ljavafx/beans/InvalidationListener;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/collections/MapListenerHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    new-instance v2, Lcom/sun/javafx/collections/MapListenerHelper$Generic;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;->listener:Ljavafx/collections/MapChangeListener;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/collections/MapListenerHelper$Generic;-><init>(Ljavafx/collections/MapChangeListener;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/collections/MapListenerHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;->listener:Ljavafx/collections/MapChangeListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 164
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/MapListenerHelper$SingleChange<TK;TV;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method
