.class public abstract Lcom/sun/javafx/collections/MapListenerHelper;
.super Lcom/sun/javafx/binding/ExpressionHelperBase;
.source "MapListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/collections/MapListenerHelper$Generic;,
        Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;,
        Lcom/sun/javafx/collections/MapListenerHelper$SingleInvalidation;
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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/binding/ExpressionHelperBase;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 43
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 45
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    new-instance v2, Lcom/sun/javafx/collections/MapListenerHelper$SingleInvalidation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/MapListenerHelper$SingleInvalidation;-><init>(Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/MapListenerHelper$1;)V

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/MapListenerHelper;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static addListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 59
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    new-instance v2, Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/MapListenerHelper$SingleChange;-><init>(Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/collections/MapListenerHelper$1;)V

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/MapListenerHelper;->addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/MapListenerHelper;->fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static hasListeners(Lcom/sun/javafx/collections/MapListenerHelper;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    return v0

    .restart local v0    # "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 50
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 52
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/MapListenerHelper;->removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 66
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/collections/MapListenerHelper;, "Lcom/sun/javafx/collections/MapListenerHelper<TK;TV;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/MapListenerHelper;->removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected abstract addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation
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

.method protected abstract removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/collections/MapListenerHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end method
