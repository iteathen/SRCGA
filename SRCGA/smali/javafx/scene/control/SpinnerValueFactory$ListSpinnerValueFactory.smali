.class public Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;
.super Ljavafx/scene/control/SpinnerValueFactory;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SpinnerValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListSpinnerValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/SpinnerValueFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private currentIndex:I

.field private items:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final itemsContentObserver:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 7
    .param p1    # Ljavafx/collections/ObservableList;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "items"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/SpinnerValueFactory;-><init>()V

    .line 230
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    .line 232
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->itemsContentObserver:Ljavafx/collections/ListChangeListener;

    .line 239
    move-object v2, v0

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->itemsContentObserver:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v3, v2, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;

    .line 257
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->setItems(Ljavafx/collections/ObservableList;)V

    .line 258
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$1;-><init>(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->setConverter(Ljavafx/util/StringConverter;)V

    .line 271
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;Ljavafx/collections/ObservableList;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 284
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    invoke-direct {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->_getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method private _getValue(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v2, v3

    .line 395
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    :cond_0
    move v3, v1

    if-ltz v3, :cond_1

    move v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;)Ljavafx/collections/WeakListChangeListener;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->weakItemsContentObserver:Ljavafx/collections/WeakListChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;)V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->updateCurrentIndex()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->lambda$new$213(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->lambda$new$214(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private getItemsSize()I
    .locals 3

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 382
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method private synthetic lambda$new$213(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->updateCurrentIndex()V

    .line 237
    return-void
.end method

.method private synthetic lambda$new$214(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljavafx/collections/ObservableList;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "items"
        .end annotation
    .end param

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;
    move-object v2, p2

    .local v2, "o":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "oldValue":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "newValue":Ljava/lang/Object;
    const/4 v6, -0x1

    move v5, v6

    .line 275
    .local v5, "newIndex":I
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 276
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    move v5, v6

    .line 282
    :goto_0
    move-object v6, v0

    move v7, v5

    iput v7, v6, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    .line 283
    return-void

    .line 279
    :cond_0
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 280
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    move v5, v6

    goto :goto_0
.end method

.method private updateCurrentIndex()V
    .locals 5

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->getItemsSize()I

    move-result v2

    move v1, v2

    .line 387
    .local v1, "itemsSize":I
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    if-ltz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    move v3, v1

    if-lt v2, v3, :cond_1

    .line 388
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    .line 390
    :cond_1
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    invoke-direct {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->_getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 391
    return-void
.end method


# virtual methods
.method public decrement(I)V
    .locals 9

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move v1, p1

    .local v1, "steps":I
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->getItemsSize()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .line 360
    .local v2, "max":I
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    move v5, v1

    sub-int/2addr v4, v5

    move v3, v4

    .line 361
    .local v3, "newIndex":I
    move-object v4, v0

    move v5, v3

    if-ltz v5, :cond_0

    move v5, v3

    :goto_0
    iput v5, v4, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    .line 362
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    invoke-direct {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->_getValue(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 363
    return-void

    .line 361
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->isWrapAround()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    const/4 v6, 0x0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/Spinner;->wrapValue(III)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->items:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->items:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    goto :goto_0
.end method

.method public increment(I)V
    .locals 9

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move v1, p1

    .local v1, "steps":I
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->getItemsSize()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .line 368
    .local v2, "max":I
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    move v5, v1

    add-int/2addr v4, v5

    move v3, v4

    .line 369
    .local v3, "newIndex":I
    move-object v4, v0

    move v5, v3

    move v6, v2

    if-gt v5, v6, :cond_0

    move v5, v3

    :goto_0
    iput v5, v4, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    .line 370
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->currentIndex:I

    invoke-direct {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->_getValue(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 371
    return-void

    .line 369
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->isWrapAround()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    const/4 v6, 0x0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/Spinner;->wrapValue(III)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_0
.end method

.method public final itemsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->items:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 324
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "items"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;-><init>(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->items:Ljavafx/beans/property/ObjectProperty;

    .line 346
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->items:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    return-object v0
.end method

.method public final setItems(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 303
    return-void
.end method
