.class Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;
.super Lcom/sun/javafx/binding/ListExpressionHelper;
.source "ListExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ListExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleListChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ListExpressionHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private currentValue:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, p2

    .local v2, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    .line 249
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    .line 250
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    iput-object v4, v3, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V
    .locals 7

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableListValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/ListChangeListener;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/binding/ListExpressionHelper$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    new-instance v2, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 9
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

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    new-instance v2, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    new-instance v2, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .locals 12

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    move-object v1, v5

    .line 286
    .local v1, "oldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-interface {v6}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableList;

    iput-object v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    .line 287
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    move-object v6, v1

    if-eq v5, v6, :cond_0

    .line 288
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    move v2, v5

    .line 289
    .local v2, "safeSize":I
    move-object v5, v1

    if-nez v5, :cond_2

    .line 290
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v5

    .line 291
    :goto_1
    move-object v3, v5

    .line 292
    .local v3, "safeOldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    new-instance v5, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move v8, v2

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    move-object v4, v5

    .line 293
    .local v4, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 295
    .end local v2    # "safeSize":I
    .end local v3    # "safeOldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    .end local v4    # "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    :cond_0
    return-void

    .line 288
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->currentValue:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    goto :goto_0

    .line 290
    .restart local v2    # "safeSize":I
    :cond_2
    move-object v5, v1

    .line 291
    invoke-static {v5}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v5

    goto :goto_1
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    new-instance v3, Lcom/sun/javafx/collections/SourceAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SourceAdapterChange;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;)V

    invoke-interface {v2, v3}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 300
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 3
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

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    return-object v0
.end method

.method protected removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;->listener:Ljavafx/collections/ListChangeListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;, "Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange<TE;>;"
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method
