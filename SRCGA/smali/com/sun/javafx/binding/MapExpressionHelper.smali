.class public abstract Lcom/sun/javafx/binding/MapExpressionHelper;
.super Lcom/sun/javafx/binding/ExpressionHelperBase;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;,
        Lcom/sun/javafx/binding/MapExpressionHelper$Generic;,
        Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;,
        Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;,
        Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ExpressionHelperBase;"
    }
.end annotation


# instance fields
.field protected final observable:Ljavafx/beans/value/ObservableMapValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavafx/beans/value/ObservableMapValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/binding/ExpressionHelperBase;-><init>()V

    .line 105
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/binding/MapExpressionHelper;->observable:Ljavafx/beans/value/ObservableMapValue;

    .line 106
    return-void
.end method

.method public static addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/InvalidationListener;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 46
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 48
    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 49
    move-object v3, v0

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 61
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 63
    :cond_1
    move-object v3, v0

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 75
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 77
    :cond_1
    move-object v3, v0

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 89
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent()V

    .line 91
    :cond_0
    return-void
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 95
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 56
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 70
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 82
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 84
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/MapExpressionHelper;, "Lcom/sun/javafx/binding/MapExpressionHelper<TK;TV;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected abstract addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract fireValueChangedEvent()V
.end method

.method protected abstract fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method
