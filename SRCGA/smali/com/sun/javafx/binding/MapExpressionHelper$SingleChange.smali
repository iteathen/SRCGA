.class Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;
.super Lcom/sun/javafx/binding/MapExpressionHelper;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/MapExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/MapExpressionHelper",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private currentValue:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 180
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    .line 181
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableMap;

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V
    .locals 7

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableMapValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ChangeListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/binding/MapExpressionHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 9
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

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    new-instance v2, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    new-instance v2, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .locals 6

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    move-object v1, v2

    .line 217
    .local v1, "oldValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableMap;

    iput-object v3, v2, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    .line 218
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 219
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v2, v3, v4, v5}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    :cond_0
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v2, v3, v4, v5}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 4
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

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;->listener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method protected removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange<TK;TV;>;"
    return-object v0
.end method
