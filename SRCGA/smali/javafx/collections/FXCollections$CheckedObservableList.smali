.class Ljavafx/collections/FXCollections$CheckedObservableList;
.super Ljavafx/collections/ObservableListBase;
.source "FXCollections.java"

# interfaces
.implements Ljavafx/collections/ObservableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedObservableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/ObservableListBase",
        "<TT;>;",
        "Ljavafx/collections/ObservableList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final list:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableList;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1266
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, p2

    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/collections/ObservableListBase;-><init>()V

    .line 1267
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 1268
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1270
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    .line 1271
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->type:Ljava/lang/Class;

    .line 1272
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/collections/FXCollections$CheckedObservableList$$Lambda$1;->lambdaFactory$(Ljavafx/collections/FXCollections$CheckedObservableList;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->listener:Ljavafx/collections/ListChangeListener;

    .line 1275
    move-object v3, v1

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/FXCollections$CheckedObservableList;->listener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1276
    return-void
.end method

.method static synthetic access$000(Ljavafx/collections/FXCollections$CheckedObservableList;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 1260
    move-object v0, p0

    .local v0, "x0":Ljavafx/collections/FXCollections$CheckedObservableList;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/collections/FXCollections$CheckedObservableList;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/collections/FXCollections$CheckedObservableList;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableList;->lambda$new$52(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$52(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8

    .prologue
    .line 1273
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/collections/SourceAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SourceAdapterChange;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;)V

    invoke-virtual {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableList;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 1274
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 1394
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/collections/FXCollections$CheckedObservableList;->typeCheck(Ljava/lang/Object;)V

    .line 1395
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 1396
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1509
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableList;->typeCheck(Ljava/lang/Object;)V

    .line 1510
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1401
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/4 v5, 0x0

    move-object v3, v5

    .line 1403
    .local v3, "a":[Ljava/lang/Object;, "[TT;"
    move-object v5, v2

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Ljavafx/collections/FXCollections$CheckedObservableList;->type:Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 1406
    .line 1408
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move v6, v1

    move-object v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0

    .line 1404
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1405
    .local v4, "e":Ljava/lang/ArrayStoreException;
    new-instance v5, Ljava/lang/ClassCastException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/ClassCastException;-><init>()V

    throw v5
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1414
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/4 v4, 0x0

    move-object v2, v4

    .line 1416
    .local v2, "a":[Ljava/lang/Object;, "[TT;"
    move-object v4, v1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$CheckedObservableList;->type:Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 1419
    .line 1421
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0

    .line 1417
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1418
    .local v3, "e":Ljava/lang/ArrayStoreException;
    new-instance v4, Ljava/lang/ClassCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    throw v4
.end method

.method public varargs addAll([Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 1522
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->type:Ljava/lang/Class;

    move-object v4, v1

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 1523
    .local v2, "array":[Ljava/lang/Object;, "[TT;"
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1524
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0

    .line 1525
    .end local v2    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1526
    .local v2, "e":Ljava/lang/ArrayStoreException;
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/ClassCastException;-><init>()V

    throw v3
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1353
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 1354
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 1298
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1323
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 1358
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1368
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1363
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 1378
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1486
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    new-instance v1, Ljavafx/collections/FXCollections$CheckedObservableList$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableList$2;-><init>(Ljavafx/collections/FXCollections$CheckedObservableList;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 1383
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1426
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/collections/FXCollections$CheckedObservableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1431
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move v1, p1

    .local v1, "index":I
    new-instance v2, Ljavafx/collections/FXCollections$CheckedObservableList$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/collections/FXCollections$CheckedObservableList$1;-><init>(Ljavafx/collections/FXCollections$CheckedObservableList;I)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1373
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return-object v0
.end method

.method public remove(II)V
    .locals 6

    .prologue
    .line 1348
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->remove(II)V

    .line 1349
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 1318
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1328
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public varargs removeAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 1338
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeAll([Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1333
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public varargs retainAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 1343
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->retainAll([Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 1388
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/collections/FXCollections$CheckedObservableList;->typeCheck(Ljava/lang/Object;)V

    .line 1389
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return-object v0
.end method

.method public setAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1545
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/4 v4, 0x0

    move-object v2, v4

    .line 1547
    .local v2, "a":[Ljava/lang/Object;, "[TT;"
    move-object v4, v1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$CheckedObservableList;->type:Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 1550
    .line 1552
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0

    .line 1548
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1549
    .local v3, "e":Ljava/lang/ArrayStoreException;
    new-instance v4, Ljava/lang/ClassCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    throw v4
.end method

.method public varargs setAll([Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 1534
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->type:Ljava/lang/Class;

    move-object v4, v1

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 1535
    .local v2, "array":[Ljava/lang/Object;, "[TT;"
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1536
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0

    .line 1537
    .end local v2    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1538
    .local v2, "e":Ljava/lang/ArrayStoreException;
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/ClassCastException;-><init>()V

    throw v3
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1288
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1515
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$CheckedObservableList;->type:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Collections;->checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1303
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1308
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1313
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList;->list:Ljavafx/collections/ObservableList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    return-object v0
.end method

.method typeCheck(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1279
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList;, "Ljavafx/collections/FXCollections$CheckedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList;->type:Ljava/lang/Class;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1280
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to insert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    .line 1281
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " element into collection with element type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$CheckedObservableList;->type:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1284
    :cond_0
    return-void
.end method
