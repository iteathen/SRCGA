.class Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;
.super Lcom/sun/javafx/binding/SetExpressionHelper;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SetExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleSetChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/SetExpressionHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private currentValue:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/collections/SetChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 235
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    .line 236
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableSet;

    iput-object v4, v3, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V
    .locals 7

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableSetValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/SetChangeListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/binding/SetExpressionHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 9
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

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    new-instance v2, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    new-instance v2, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .locals 9

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    move-object v1, v5

    .line 272
    .local v1, "oldValue":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v6}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableSet;

    iput-object v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    .line 273
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    move-object v6, v1

    if-eq v5, v6, :cond_0

    .line 274
    new-instance v5, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-direct {v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableSet;)V

    move-object v2, v5

    .line 275
    .local v2, "change":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    if-nez v5, :cond_1

    .line 276
    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 277
    .local v4, "element":Ljava/lang/Object;, "TE;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 278
    goto :goto_0

    .line 296
    .end local v2    # "change":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    :goto_1
    return-void

    .line 279
    .restart local v2    # "change":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    :cond_1
    move-object v5, v1

    if-nez v5, :cond_3

    .line 280
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v5}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 281
    .restart local v4    # "element":Ljava/lang/Object;, "TE;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 282
    goto :goto_2

    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_1

    .line 284
    :cond_3
    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_3
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 285
    .restart local v4    # "element":Ljava/lang/Object;, "TE;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 286
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 288
    :cond_4
    goto :goto_3

    .line 289
    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v5}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_4
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 290
    .restart local v4    # "element":Ljava/lang/Object;, "TE;"
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 291
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 293
    :cond_6
    goto :goto_4
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    new-instance v3, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/SetChangeListener$Change;)V

    invoke-interface {v2, v3}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 301
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 3
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

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;->listener:Ljavafx/collections/SetChangeListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange<TE;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method
