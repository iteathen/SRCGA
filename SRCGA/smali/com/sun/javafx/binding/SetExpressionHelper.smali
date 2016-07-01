.class public abstract Lcom/sun/javafx/binding/SetExpressionHelper;
.super Lcom/sun/javafx/binding/ExpressionHelperBase;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;,
        Lcom/sun/javafx/binding/SetExpressionHelper$Generic;,
        Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;,
        Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;,
        Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;
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
.field protected final observable:Ljavafx/beans/value/ObservableSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavafx/beans/value/ObservableSetValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/binding/ExpressionHelperBase;-><init>()V

    .line 104
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/binding/SetExpressionHelper;->observable:Ljavafx/beans/value/ObservableSetValue;

    .line 105
    return-void
.end method

.method public static addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/InvalidationListener;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 45
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 47
    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 48
    move-object v3, v0

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 60
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 62
    :cond_1
    move-object v3, v0

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
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

    new-instance v3, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    :goto_0
    move-object v0, v3

    .end local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    :cond_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    goto :goto_0
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 88
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent()V

    .line 90
    :cond_0
    return-void
.end method

.method public static fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 94
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 55
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
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

    .end local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
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

    .end local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    return-object v0

    .restart local v0    # "helper":Lcom/sun/javafx/binding/SetExpressionHelper;, "Lcom/sun/javafx/binding/SetExpressionHelper<TE;>;"
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected abstract addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract fireValueChangedEvent()V
.end method

.method protected abstract fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected abstract removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end method
