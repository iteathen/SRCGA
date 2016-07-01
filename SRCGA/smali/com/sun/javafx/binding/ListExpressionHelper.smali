.class public abstract Lcom/sun/javafx/binding/ListExpressionHelper;
.super Lcom/sun/javafx/binding/ExpressionHelperBase;
.source "ListExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/ListExpressionHelper$Generic;,
        Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;,
        Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;,
        Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ExpressionHelperBase;"
    }
.end annotation


# instance fields
.field protected final observable:Ljavafx/beans/value/ObservableListValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavafx/beans/value/ObservableListValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/binding/ExpressionHelperBase;-><init>()V

    .line 118
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/binding/ListExpressionHelper;->observable:Ljavafx/beans/value/ObservableListValue;

    .line 119
    return-void
.end method

.method public static addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/InvalidationListener;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 59
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 61
    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 62
    move-object v3, v0

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 74
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 76
    :cond_1
    move-object v3, v0

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 88
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 90
    :cond_1
    move-object v3, v0

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 102
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent()V

    .line 104
    :cond_0
    return-void
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 108
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V

    .line 110
    :cond_0
    return-void
.end method

.method public static removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 69
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 81
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 83
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 97
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/ListExpressionHelper;, "Lcom/sun/javafx/binding/ListExpressionHelper<TE;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected abstract addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract fireValueChangedEvent()V
.end method

.method protected abstract fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method
