.class public abstract Lcom/sun/javafx/collections/ArrayListenerHelper;
.super Lcom/sun/javafx/binding/ExpressionHelperBase;
.source "ArrayListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;,
        Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;,
        Lcom/sun/javafx/collections/ArrayListenerHelper$SingleInvalidation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavafx/collections/ObservableArray",
        "<TT;>;>",
        "Lcom/sun/javafx/binding/ExpressionHelperBase;"
    }
.end annotation


# instance fields
.field protected final observable:Ljavafx/collections/ObservableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper;, "Lcom/sun/javafx/collections/ArrayListenerHelper<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/collections/ObservableArray;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/binding/ExpressionHelperBase;-><init>()V

    .line 84
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ArrayListenerHelper;->observable:Ljavafx/collections/ObservableArray;

    .line 85
    return-void
.end method

.method public static addListener(Lcom/sun/javafx/collections/ArrayListenerHelper;Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavafx/collections/ObservableArray",
            "<TT;>;>(",
            "Lcom/sun/javafx/collections/ArrayListenerHelper;",
            "TT;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/collections/ArrayListenerHelper;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    move-object v1, p1

    .local v1, "observable":Ljavafx/collections/ObservableArray;, "TT;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/InvalidationListener;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 42
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 44
    :cond_0
    move-object v3, v0

    if-nez v3, :cond_1

    new-instance v3, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleInvalidation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleInvalidation;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    :cond_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/ArrayListenerHelper;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static addListener(Lcom/sun/javafx/collections/ArrayListenerHelper;Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavafx/collections/ObservableArray",
            "<TT;>;>(",
            "Lcom/sun/javafx/collections/ArrayListenerHelper;",
            "TT;",
            "Ljavafx/collections/ArrayChangeListener;",
            ")",
            "Lcom/sun/javafx/collections/ArrayListenerHelper;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    move-object v1, p1

    .local v1, "observable":Ljavafx/collections/ObservableArray;, "TT;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/collections/ArrayChangeListener;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 56
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 58
    :cond_0
    move-object v3, v0

    if-nez v3, :cond_1

    new-instance v3, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    :cond_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/ArrayListenerHelper;->addListener(Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/collections/ArrayListenerHelper;ZII)V
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    move v1, p1

    .local v1, "sizeChanged":Z
    move v2, p2

    .local v2, "from":I
    move v3, p3

    .local v3, "to":I
    move-object v4, v0

    if-eqz v4, :cond_1

    move v4, v2

    move v5, v3

    if-lt v4, v5, :cond_0

    move v4, v1

    if-eqz v4, :cond_1

    .line 70
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ArrayListenerHelper;->fireValueChangedEvent(ZII)V

    .line 72
    :cond_1
    return-void
.end method

.method public static hasListeners(Lcom/sun/javafx/collections/ArrayListenerHelper;)Z
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    move-object v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    return v0

    .restart local v0    # "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/collections/ArrayListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 51
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ArrayListenerHelper;->removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/collections/ArrayListenerHelper;Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ArrayChangeListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 65
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/collections/ArrayListenerHelper;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ArrayListenerHelper;->removeListener(Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected abstract addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
.end method

.method protected abstract addListener(Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ArrayChangeListener",
            "<TT;>;)",
            "Lcom/sun/javafx/collections/ArrayListenerHelper;"
        }
    .end annotation
.end method

.method protected abstract fireValueChangedEvent(ZII)V
.end method

.method protected abstract removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
.end method

.method protected abstract removeListener(Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ArrayChangeListener",
            "<TT;>;)",
            "Lcom/sun/javafx/collections/ArrayListenerHelper;"
        }
    .end annotation
.end method
