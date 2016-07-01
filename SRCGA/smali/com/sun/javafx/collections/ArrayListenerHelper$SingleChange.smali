.class Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;
.super Lcom/sun/javafx/collections/ArrayListenerHelper;
.source "ArrayListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/ArrayListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavafx/collections/ObservableArray",
        "<TT;>;>",
        "Lcom/sun/javafx/collections/ArrayListenerHelper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/collections/ArrayChangeListener;


# direct methods
.method private constructor <init>(Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavafx/collections/ArrayChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/collections/ObservableArray;, "TT;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/collections/ArrayChangeListener;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/ArrayListenerHelper;-><init>(Ljavafx/collections/ObservableArray;)V

    .line 143
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;->listener:Ljavafx/collections/ArrayChangeListener;

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/collections/ObservableArray;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/ArrayChangeListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/collections/ArrayListenerHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 9

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;->observable:Ljavafx/collections/ObservableArray;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;->listener:Ljavafx/collections/ArrayChangeListener;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;Ljavafx/collections/ArrayChangeListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 9

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ArrayChangeListener;
    new-instance v2, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;->observable:Ljavafx/collections/ObservableArray;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;->listener:Ljavafx/collections/ArrayChangeListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;Ljavafx/collections/ArrayChangeListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent(ZII)V
    .locals 10

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    move v1, p1

    .local v1, "sizeChanged":Z
    move v2, p2

    .local v2, "from":I
    move v3, p3

    .local v3, "to":I
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;->listener:Ljavafx/collections/ArrayChangeListener;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;->observable:Ljavafx/collections/ObservableArray;

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-interface {v5, v6, v7, v8, v9}, Ljavafx/collections/ArrayChangeListener;->onChanged(Ljavafx/collections/ObservableArray;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 171
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ArrayChangeListener;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;->listener:Ljavafx/collections/ArrayChangeListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;, "Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange<TT;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method
