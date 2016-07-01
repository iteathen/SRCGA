.class Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;
.super Lcom/sun/javafx/binding/ExpressionHelper;
.source "ExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInvalidation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ExpressionHelper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/beans/InvalidationListener;


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    move-object v1, p1

    .local v1, "expression":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/InvalidationListener;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    .line 110
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/binding/ExpressionHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/binding/ExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    new-instance v2, Lcom/sun/javafx/binding/ExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2, v3}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;->listener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation<TT;>;"
    return-object v0
.end method
