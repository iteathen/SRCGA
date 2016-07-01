.class Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;
.super Lcom/sun/javafx/binding/ExpressionHelper;
.source "ExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChange"
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
.field private currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    .line 150
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    .line 151
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V
    .locals 7

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ChangeListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/binding/ExpressionHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)V

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
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/binding/ExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
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
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    new-instance v2, Lcom/sun/javafx/binding/ExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .locals 8

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    move-object v1, v4

    .line 177
    .local v1, "oldValue":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v5}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    .line 178
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    if-nez v4, :cond_2

    move-object v4, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 179
    .local v2, "changed":Z
    move v4, v2

    if-eqz v4, :cond_0

    .line 181
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 186
    :cond_0
    :goto_1
    return-void

    .line 178
    .end local v2    # "changed":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->currentValue:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 182
    .restart local v2    # "changed":Z
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 183
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 3
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
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 4
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
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/ExpressionHelper$SingleChange<TT;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method
