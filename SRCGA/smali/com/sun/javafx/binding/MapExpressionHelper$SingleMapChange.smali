.class Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;
.super Lcom/sun/javafx/binding/MapExpressionHelper;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/MapExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleMapChange"
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

.field private final listener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 236
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    .line 237
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableMap;

    iput-object v4, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableMapValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/MapChangeListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/binding/MapExpressionHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)V

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
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
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
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    new-instance v2, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
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
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    new-instance v2, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .locals 14

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    move-object v1, v8

    .line 273
    .local v1, "oldValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v9}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/collections/ObservableMap;

    iput-object v9, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    .line 274
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    move-object v9, v1

    if-eq v8, v9, :cond_0

    .line 275
    new-instance v8, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-direct {v9, v10}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableMap;)V

    move-object v2, v8

    .line 276
    .local v2, "change":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    if-nez v8, :cond_1

    .line 277
    move-object v8, v1

    invoke-interface {v8}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v4, v8

    .line 278
    .local v4, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    move-object v9, v2

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v9

    invoke-interface {v8, v9}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 279
    goto :goto_0

    .line 305
    .end local v2    # "change":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    .end local v4    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    :goto_1
    return-void

    .line 280
    .restart local v2    # "change":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    :cond_1
    move-object v8, v1

    if-nez v8, :cond_3

    .line 281
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v8}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_2
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v4, v8

    .line 282
    .restart local v4    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    move-object v9, v2

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v9

    invoke-interface {v8, v9}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 283
    goto :goto_2

    .end local v4    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    goto :goto_1

    .line 285
    :cond_3
    move-object v8, v1

    invoke-interface {v8}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_3
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v4, v8

    .line 286
    .restart local v4    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 287
    .local v5, "key":Ljava/lang/Object;, "TK;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 288
    .local v6, "oldEntry":Ljava/lang/Object;, "TV;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    move-object v9, v5

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 289
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    move-object v9, v5

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 290
    .local v7, "newEntry":Ljava/lang/Object;, "TV;"
    move-object v8, v6

    if-nez v8, :cond_5

    move-object v8, v7

    if-eqz v8, :cond_4

    .line 291
    :goto_4
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    move-object v9, v2

    move-object v10, v5

    move-object v11, v6

    move-object v12, v7

    invoke-virtual {v9, v10, v11, v12}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v9

    invoke-interface {v8, v9}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 293
    .line 296
    .end local v7    # "newEntry":Ljava/lang/Object;, "TV;"
    :cond_4
    :goto_5
    goto :goto_3

    .line 290
    .restart local v7    # "newEntry":Ljava/lang/Object;, "TV;"
    :cond_5
    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_4

    .line 294
    .end local v7    # "newEntry":Ljava/lang/Object;, "TV;"
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    move-object v9, v2

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v9

    invoke-interface {v8, v9}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    goto :goto_5

    .line 297
    .end local v4    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "oldEntry":Ljava/lang/Object;, "TV;"
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->currentValue:Ljavafx/collections/ObservableMap;

    invoke-interface {v8}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_6
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v4, v8

    .line 298
    .restart local v4    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 299
    .restart local v5    # "key":Ljava/lang/Object;, "TK;"
    move-object v8, v1

    move-object v9, v5

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 300
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    move-object v9, v2

    move-object v10, v5

    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v9

    invoke-interface {v8, v9}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 302
    :cond_8
    goto :goto_6
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    new-instance v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/MapChangeListener$Change;)V

    invoke-interface {v2, v3}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 310
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
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 3
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
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 4
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
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;->listener:Ljavafx/collections/MapChangeListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange<TK;TV;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method
