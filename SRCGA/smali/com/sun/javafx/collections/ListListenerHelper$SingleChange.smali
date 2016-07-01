.class Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;
.super Lcom/sun/javafx/collections/ListListenerHelper;
.source "ListListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/ListListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/collections/ListListenerHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/collections/ListChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/ListListenerHelper;-><init>()V

    .line 137
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;->listener:Ljavafx/collections/ListChangeListener;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/collections/ListListenerHelper$1;)V
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/collections/ListChangeListener;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/collections/ListListenerHelper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;-><init>(Ljavafx/collections/ListChangeListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/collections/ListListenerHelper$Generic;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;->listener:Ljavafx/collections/ListChangeListener;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper$Generic;-><init>(Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/collections/ListListenerHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    new-instance v2, Lcom/sun/javafx/collections/ListListenerHelper$Generic;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;->listener:Ljavafx/collections/ListChangeListener;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper$Generic;-><init>(Ljavafx/collections/ListChangeListener;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/collections/ListListenerHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;->listener:Ljavafx/collections/ListChangeListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 165
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

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;->listener:Ljavafx/collections/ListChangeListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/ListListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ListListenerHelper$SingleChange<TE;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method
