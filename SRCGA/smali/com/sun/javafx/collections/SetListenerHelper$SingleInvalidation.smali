.class Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;
.super Lcom/sun/javafx/collections/SetListenerHelper;
.source "SetListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/SetListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInvalidation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/collections/SetListenerHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/beans/InvalidationListener;


# direct methods
.method private constructor <init>(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/SetListenerHelper;-><init>()V

    .line 98
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/SetListenerHelper$1;)V
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/InvalidationListener;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/collections/SetListenerHelper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;-><init>(Ljavafx/beans/InvalidationListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/SetListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/collections/SetListenerHelper$Generic;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper$Generic;-><init>(Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/SetListenerHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/collections/SetListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    new-instance v2, Lcom/sun/javafx/collections/SetListenerHelper$Generic;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper$Generic;-><init>(Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/collections/SetListenerHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/SetChangeListener$Change;->getSet()Ljavafx/collections/ObservableSet;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 126
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

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/SetListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method protected removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/collections/SetListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation;, "Lcom/sun/javafx/collections/SetListenerHelper$SingleInvalidation<TE;>;"
    return-object v0
.end method
