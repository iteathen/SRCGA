.class public abstract Lcom/sun/javafx/binding/ExpressionHelper;
.super Lcom/sun/javafx/binding/ExpressionHelperBase;
.source "ExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/ExpressionHelper$Generic;,
        Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;,
        Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ExpressionHelperBase;"
    }
.end annotation


# instance fields
.field protected final observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/binding/ExpressionHelperBase;-><init>()V

    .line 90
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/binding/ExpressionHelper;->observable:Ljavafx/beans/value/ObservableValue;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableValue;Lcom/sun/javafx/binding/ExpressionHelper$1;)V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/binding/ExpressionHelper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;)V

    return-void
.end method

.method public static addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/InvalidationListener;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 51
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 53
    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 54
    move-object v3, v0

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 66
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 68
    :cond_1
    move-object v3, v0

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 80
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent()V

    .line 82
    :cond_0
    return-void
.end method

.method public static removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 61
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 75
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/ExpressionHelper;, "Lcom/sun/javafx/binding/ExpressionHelper<TT;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected abstract addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract fireValueChangedEvent()V
.end method

.method protected abstract removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation
.end method
