.class public Ljavafx/collections/FXCollections;
.super Ljava/lang/Object;
.source "FXCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/collections/FXCollections$SynchronizedObservableMap;,
        Ljavafx/collections/FXCollections$SynchronizedCollection;,
        Ljavafx/collections/FXCollections$SynchronizedMap;,
        Ljavafx/collections/FXCollections$CheckedObservableMap;,
        Ljavafx/collections/FXCollections$EmptyObservableMap;,
        Ljavafx/collections/FXCollections$CheckedObservableSet;,
        Ljavafx/collections/FXCollections$SynchronizedObservableSet;,
        Ljavafx/collections/FXCollections$SynchronizedSet;,
        Ljavafx/collections/FXCollections$UnmodifiableObservableSet;,
        Ljavafx/collections/FXCollections$EmptyObservableSet;,
        Ljavafx/collections/FXCollections$CheckedObservableList;,
        Ljavafx/collections/FXCollections$SynchronizedObservableList;,
        Ljavafx/collections/FXCollections$SynchronizedList;,
        Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;,
        Ljavafx/collections/FXCollections$SingletonObservableList;,
        Ljavafx/collections/FXCollections$EmptyObservableList;
    }
.end annotation


# static fields
.field private static EMPTY_OBSERVABLE_LIST:Ljavafx/collections/ObservableList;

.field private static EMPTY_OBSERVABLE_MAP:Ljavafx/collections/ObservableMap;

.field private static EMPTY_OBSERVABLE_SET:Ljavafx/collections/ObservableSet;

.field private static r:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Ljavafx/collections/FXCollections$EmptyObservableMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/collections/FXCollections$EmptyObservableMap;-><init>()V

    sput-object v0, Ljavafx/collections/FXCollections;->EMPTY_OBSERVABLE_MAP:Ljavafx/collections/ObservableMap;

    .line 417
    new-instance v0, Ljavafx/collections/FXCollections$EmptyObservableList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/collections/FXCollections$EmptyObservableList;-><init>()V

    sput-object v0, Ljavafx/collections/FXCollections;->EMPTY_OBSERVABLE_LIST:Ljavafx/collections/ObservableList;

    .line 486
    new-instance v0, Ljavafx/collections/FXCollections$EmptyObservableSet;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/collections/FXCollections$EmptyObservableSet;-><init>()V

    sput-object v0, Ljavafx/collections/FXCollections;->EMPTY_OBSERVABLE_SET:Ljavafx/collections/ObservableSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedObservableList(Ljavafx/collections/ObservableList;Ljava/lang/Class;)Ljavafx/collections/ObservableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 399
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 401
    :cond_0
    new-instance v2, Ljavafx/collections/FXCollections$CheckedObservableList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/collections/FXCollections$CheckedObservableList;-><init>(Ljavafx/collections/ObservableList;Ljava/lang/Class;)V

    move-object v0, v2

    .end local v0    # "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    return-object v0
.end method

.method public static checkedObservableMap(Ljavafx/collections/ObservableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljavafx/collections/ObservableMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    move-object v2, p2

    .local v2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 205
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 207
    :cond_1
    new-instance v3, Ljavafx/collections/FXCollections$CheckedObservableMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/collections/FXCollections$CheckedObservableMap;-><init>(Ljavafx/collections/ObservableMap;Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v0, v3

    .end local v0    # "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public static checkedObservableSet(Ljavafx/collections/ObservableSet;Ljava/lang/Class;)Ljavafx/collections/ObservableSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 467
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 469
    :cond_0
    new-instance v2, Ljavafx/collections/FXCollections$CheckedObservableSet;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/collections/FXCollections$CheckedObservableSet;-><init>(Ljavafx/collections/ObservableSet;Ljava/lang/Class;)V

    move-object v0, v2

    .end local v0    # "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    return-object v0
.end method

.method public static varargs concat([Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "lists":[Ljavafx/collections/ObservableList;, "[Ljavafx/collections/ObservableList<TE;>;"
    move-object v6, v0

    array-length v6, v6

    if-nez v6, :cond_0

    .line 363
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v0, v6

    .line 373
    .end local v0    # "lists":[Ljavafx/collections/ObservableList;, "[Ljavafx/collections/ObservableList<TE;>;"
    .local v1, "backingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :goto_0
    return-object v0

    .line 365
    .end local v1    # "backingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .restart local v0    # "lists":[Ljavafx/collections/ObservableList;, "[Ljavafx/collections/ObservableList<TE;>;"
    :cond_0
    move-object v6, v0

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 366
    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Ljavafx/collections/FXCollections;->observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 368
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 369
    .restart local v1    # "backingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 370
    .local v5, "s":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 373
    .end local v5    # "s":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    :cond_2
    move-object v6, v1

    invoke-static {v6}, Ljavafx/collections/FXCollections;->observableList(Ljava/util/List;)Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public static copy(Ljavafx/collections/ObservableList;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<-TT;>;",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "dest":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<-TT;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    .line 509
    .local v2, "srcSize":I
    move v4, v2

    move-object v5, v0

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 510
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Source does not fit in dest"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 512
    :cond_0
    move-object v4, v0

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 513
    .local v3, "destArray":[Ljava/lang/Object;, "[TT;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 515
    return-void
.end method

.method public static emptyObservableList()Ljavafx/collections/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 428
    sget-object v0, Ljavafx/collections/FXCollections;->EMPTY_OBSERVABLE_LIST:Ljavafx/collections/ObservableList;

    return-object v0
.end method

.method public static emptyObservableMap()Ljavafx/collections/ObservableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Ljavafx/collections/FXCollections;->EMPTY_OBSERVABLE_MAP:Ljavafx/collections/ObservableMap;

    return-object v0
.end method

.method public static emptyObservableSet()Ljavafx/collections/ObservableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 497
    sget-object v0, Ljavafx/collections/FXCollections;->EMPTY_OBSERVABLE_SET:Ljavafx/collections/ObservableSet;

    return-object v0
.end method

.method public static fill(Ljavafx/collections/ObservableList;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<-TT;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 526
    .local v2, "newContent":[Ljava/lang/Object;, "[TT;"
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 528
    return-void
.end method

.method public static observableArrayList()Ljavafx/collections/ObservableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljavafx/collections/FXCollections;->observableList(Ljava/util/List;)Ljavafx/collections/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method public static observableArrayList(Ljava/util/Collection;)Ljavafx/collections/ObservableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 341
    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 342
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    return-object v0
.end method

.method public static observableArrayList(Ljavafx/util/Callback;)Ljavafx/collections/ObservableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/Callback",
            "<TE;[",
            "Ljavafx/beans/Observable;",
            ">;)",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "extractor":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TE;[Ljavafx/beans/Observable;>;"
    new-instance v1, Ljava/util/ArrayList;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    invoke-static {v1, v2}, Ljavafx/collections/FXCollections;->observableList(Ljava/util/List;Ljavafx/util/Callback;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "extractor":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TE;[Ljavafx/beans/Observable;>;"
    return-object v0
.end method

.method public static varargs observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "items":[Ljava/lang/Object;, "[TE;"
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 329
    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 330
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "items":[Ljava/lang/Object;, "[TE;"
    return-object v0
.end method

.method public static observableFloatArray()Ljavafx/collections/ObservableFloatArray;
    .locals 3

    .prologue
    .line 274
    new-instance v0, Lcom/sun/javafx/collections/ObservableFloatArrayImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/collections/ObservableFloatArrayImpl;-><init>()V

    return-object v0
.end method

.method public static observableFloatArray(Ljavafx/collections/ObservableFloatArray;)Ljavafx/collections/ObservableFloatArray;
    .locals 5

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "array":Ljavafx/collections/ObservableFloatArray;
    new-instance v1, Lcom/sun/javafx/collections/ObservableFloatArrayImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableFloatArrayImpl;-><init>(Ljavafx/collections/ObservableFloatArray;)V

    move-object v0, v1

    .end local v0    # "array":Ljavafx/collections/ObservableFloatArray;
    return-object v0
.end method

.method public static varargs observableFloatArray([F)Ljavafx/collections/ObservableFloatArray;
    .locals 5

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "values":[F
    new-instance v1, Lcom/sun/javafx/collections/ObservableFloatArrayImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableFloatArrayImpl;-><init>([F)V

    move-object v0, v1

    .end local v0    # "values":[F
    return-object v0
.end method

.method public static observableHashMap()Ljavafx/collections/ObservableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v0

    return-object v0
.end method

.method public static observableIntegerArray()Ljavafx/collections/ObservableIntegerArray;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;-><init>()V

    return-object v0
.end method

.method public static observableIntegerArray(Ljavafx/collections/ObservableIntegerArray;)Ljavafx/collections/ObservableIntegerArray;
    .locals 5

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "array":Ljavafx/collections/ObservableIntegerArray;
    new-instance v1, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;-><init>(Ljavafx/collections/ObservableIntegerArray;)V

    move-object v0, v1

    .end local v0    # "array":Ljavafx/collections/ObservableIntegerArray;
    return-object v0
.end method

.method public static varargs observableIntegerArray([I)Ljavafx/collections/ObservableIntegerArray;
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "values":[I
    new-instance v1, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableIntegerArrayImpl;-><init>([I)V

    move-object v0, v1

    .end local v0    # "values":[I
    return-object v0
.end method

.method public static observableList(Ljava/util/List;)Ljavafx/collections/ObservableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 100
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/util/RandomAccess;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sun/javafx/collections/ObservableListWrapper;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableListWrapper;-><init>(Ljava/util/List;)V

    :goto_0
    move-object v0, v1

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    return-object v0

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_1
    new-instance v1, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static observableList(Ljava/util/List;Ljavafx/util/Callback;)Ljavafx/collections/ObservableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljavafx/util/Callback",
            "<TE;[",
            "Ljavafx/beans/Observable;",
            ">;)",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v1, p1

    .local v1, "extractor":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TE;[Ljavafx/beans/Observable;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 123
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 125
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/util/RandomAccess;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sun/javafx/collections/ObservableListWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableListWrapper;-><init>(Ljava/util/List;Ljavafx/util/Callback;)V

    :goto_0
    move-object v0, v2

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    return-object v0

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_2
    new-instance v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;-><init>(Ljava/util/List;Ljavafx/util/Callback;)V

    goto :goto_0
.end method

.method public static observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 142
    :cond_0
    new-instance v1, Lcom/sun/javafx/collections/ObservableMapWrapper;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableMapWrapper;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    return-object v0
.end method

.method public static observableSet(Ljava/util/Set;)Ljavafx/collections/ObservableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 159
    :cond_0
    new-instance v1, Lcom/sun/javafx/collections/ObservableSetWrapper;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableSetWrapper;-><init>(Ljava/util/Set;)V

    move-object v0, v1

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    return-object v0
.end method

.method public static varargs observableSet([Ljava/lang/Object;)Ljavafx/collections/ObservableSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 171
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 173
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object v1, v2

    .line 174
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    .line 175
    new-instance v2, Lcom/sun/javafx/collections/ObservableSetWrapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/ObservableSetWrapper;-><init>(Ljava/util/Set;)V

    move-object v0, v2

    .end local v0    # "elements":[Ljava/lang/Object;, "[TE;"
    return-object v0
.end method

.method public static replaceAll(Ljavafx/collections/ObservableList;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v1, p1

    .local v1, "oldVal":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "newVal":Ljava/lang/Object;, "TT;"
    move-object v6, v0

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v3, v6

    .line 542
    .local v3, "newContent":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    move v4, v6

    .line 543
    .local v4, "modified":Z
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 544
    move-object v6, v3

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 545
    move-object v6, v3

    move v7, v5

    move-object v8, v2

    aput-object v8, v6, v7

    .line 546
    const/4 v6, 0x1

    move v4, v6

    .line 543
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 549
    :cond_1
    move v6, v4

    if-eqz v6, :cond_2

    .line 550
    move-object v6, v0

    move-object v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v6

    .line 552
    :cond_2
    move v6, v4

    move v0, v6

    .end local v0    # "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    return v0
.end method

.method public static reverse(Ljavafx/collections/ObservableList;)V
    .locals 9

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;
    move-object v4, v0

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 564
    .local v1, "newContent":[Ljava/lang/Object;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v1

    array-length v5, v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_0

    .line 565
    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 566
    .local v3, "tmp":Ljava/lang/Object;
    move-object v4, v1

    move v5, v2

    move-object v6, v1

    move-object v7, v1

    array-length v7, v7

    move v8, v2

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 567
    move-object v4, v1

    move-object v5, v1

    array-length v5, v5

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v3

    aput-object v6, v4, v5

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 570
    return-void
.end method

.method public static rotate(Ljavafx/collections/ObservableList;I)V
    .locals 12

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;
    move v1, p1

    .local v1, "distance":I
    move-object v9, v0

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    .line 583
    .local v2, "newContent":[Ljava/lang/Object;
    move-object v9, v0

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    move v3, v9

    .line 584
    .local v3, "size":I
    move v9, v1

    move v10, v3

    rem-int/2addr v9, v10

    move v1, v9

    .line 585
    move v9, v1

    if-gez v9, :cond_0

    .line 586
    move v9, v1

    move v10, v3

    add-int/2addr v9, v10

    move v1, v9

    .line 587
    :cond_0
    move v9, v1

    if-nez v9, :cond_1

    .line 588
    .line 605
    :goto_0
    return-void

    .line 590
    :cond_1
    const/4 v9, 0x0

    move v4, v9

    .local v4, "cycleStart":I
    const/4 v9, 0x0

    move v5, v9

    .local v5, "nMoved":I
    :goto_1
    move v9, v5

    move v10, v3

    if-eq v9, v10, :cond_4

    .line 591
    move-object v9, v2

    move v10, v4

    aget-object v9, v9, v10

    move-object v6, v9

    .line 593
    .local v6, "displaced":Ljava/lang/Object;
    move v9, v4

    move v8, v9

    .line 595
    .local v8, "i":I
    :cond_2
    move v9, v8

    move v10, v1

    add-int/2addr v9, v10

    move v8, v9

    .line 596
    move v9, v8

    move v10, v3

    if-lt v9, v10, :cond_3

    .line 597
    move v9, v8

    move v10, v3

    sub-int/2addr v9, v10

    move v8, v9

    .line 598
    :cond_3
    move-object v9, v2

    move v10, v8

    aget-object v9, v9, v10

    move-object v7, v9

    .line 599
    .local v7, "tmp":Ljava/lang/Object;
    move-object v9, v2

    move v10, v8

    move-object v11, v6

    aput-object v11, v9, v10

    .line 600
    move-object v9, v7

    move-object v6, v9

    .line 601
    add-int/lit8 v5, v5, 0x1

    .line 602
    move v9, v8

    move v10, v4

    if-ne v9, v10, :cond_2

    .line 590
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 604
    .end local v6    # "displaced":Ljava/lang/Object;
    .end local v7    # "tmp":Ljava/lang/Object;
    .end local v8    # "i":I
    :cond_4
    move-object v9, v0

    move-object v10, v2

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v9

    .line 605
    goto :goto_0
.end method

.method public static shuffle(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<*>;"
    sget-object v1, Ljavafx/collections/FXCollections;->r:Ljava/util/Random;

    if-nez v1, :cond_0

    .line 615
    new-instance v1, Ljava/util/Random;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sput-object v1, Ljavafx/collections/FXCollections;->r:Ljava/util/Random;

    .line 617
    :cond_0
    move-object v1, v0

    sget-object v2, Ljavafx/collections/FXCollections;->r:Ljava/util/Random;

    invoke-static {v1, v2}, Ljavafx/collections/FXCollections;->shuffle(Ljavafx/collections/ObservableList;Ljava/util/Random;)V

    .line 618
    return-void
.end method

.method public static shuffle(Ljavafx/collections/ObservableList;Ljava/util/Random;)V
    .locals 8

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;
    move-object v1, p1

    .local v1, "rnd":Ljava/util/Random;
    move-object v4, v0

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 632
    .local v2, "newContent":[Ljava/lang/Object;
    move-object v4, v0

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 633
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Ljavafx/collections/FXCollections;->swap([Ljava/lang/Object;II)V

    .line 632
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 636
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 637
    return-void
.end method

.method public static singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    new-instance v1, Ljavafx/collections/FXCollections$SingletonObservableList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$SingletonObservableList;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    return-object v0
.end method

.method public static sort(Ljavafx/collections/ObservableList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    instance-of v2, v2, Lcom/sun/javafx/collections/SortableList;

    if-eqz v2, :cond_0

    .line 653
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/collections/SortableList;

    invoke-interface {v2}, Lcom/sun/javafx/collections/SortableList;->sort()V

    .line 659
    :goto_0
    return-void

    .line 655
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 656
    .local v1, "newContent":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 657
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v2

    goto :goto_0
.end method

.method public static sort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object v3, v0

    instance-of v3, v3, Lcom/sun/javafx/collections/SortableList;

    if-eqz v3, :cond_0

    .line 671
    move-object v3, v0

    check-cast v3, Lcom/sun/javafx/collections/SortableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/collections/SortableList;->sort(Ljava/util/Comparator;)V

    .line 677
    :goto_0
    return-void

    .line 673
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 674
    .local v2, "newContent":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 675
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method private static swap([Ljava/lang/Object;II)V
    .locals 8

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "arr":[Ljava/lang/Object;
    move v1, p1

    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    move-object v4, v0

    move v5, v1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 641
    .local v3, "tmp":Ljava/lang/Object;
    move-object v4, v0

    move v5, v1

    move-object v6, v0

    move v7, v2

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 642
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    aput-object v6, v4, v5

    .line 643
    return-void
.end method

.method public static synchronizedObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 414
    :cond_0
    new-instance v1, Ljavafx/collections/FXCollections$SynchronizedObservableList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$SynchronizedObservableList;-><init>(Ljavafx/collections/ObservableList;)V

    move-object v0, v1

    .end local v0    # "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    return-object v0
.end method

.method public static synchronizedObservableMap(Ljavafx/collections/ObservableMap;)Ljavafx/collections/ObservableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 221
    :cond_0
    new-instance v1, Ljavafx/collections/FXCollections$SynchronizedObservableMap;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$SynchronizedObservableMap;-><init>(Ljavafx/collections/ObservableMap;)V

    move-object v0, v1

    .end local v0    # "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public static synchronizedObservableSet(Ljavafx/collections/ObservableSet;)Ljavafx/collections/ObservableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 481
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 483
    :cond_0
    new-instance v1, Ljavafx/collections/FXCollections$SynchronizedObservableSet;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$SynchronizedObservableSet;-><init>(Ljavafx/collections/ObservableSet;)V

    move-object v0, v1

    .end local v0    # "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    return-object v0
.end method

.method public static unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 385
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 387
    :cond_0
    new-instance v1, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;-><init>(Ljavafx/collections/ObservableList;)V

    move-object v0, v1

    .end local v0    # "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    return-object v0
.end method

.method public static unmodifiableObservableMap(Ljavafx/collections/ObservableMap;)Ljavafx/collections/ObservableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 191
    :cond_0
    new-instance v1, Lcom/sun/javafx/collections/UnmodifiableObservableMap;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/UnmodifiableObservableMap;-><init>(Ljavafx/collections/ObservableMap;)V

    move-object v0, v1

    .end local v0    # "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public static unmodifiableObservableSet(Ljavafx/collections/ObservableSet;)Ljavafx/collections/ObservableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 452
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 454
    :cond_0
    new-instance v1, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;-><init>(Ljavafx/collections/ObservableSet;)V

    move-object v0, v1

    .end local v0    # "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    return-object v0
.end method
