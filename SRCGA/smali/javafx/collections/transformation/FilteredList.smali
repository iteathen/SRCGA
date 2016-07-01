.class public final Ljavafx/collections/transformation/FilteredList;
.super Ljavafx/collections/transformation/TransformationList;
.source "FilteredList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/transformation/TransformationList",
        "<TE;TE;>;"
    }
.end annotation


# static fields
.field private static final ALWAYS_TRUE:Ljava/util/function/Predicate;


# instance fields
.field private filtered:[I

.field private helper:Lcom/sun/javafx/collections/SortHelper;

.field private predicate:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/util/function/Predicate",
            "<-TE;>;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Ljavafx/collections/transformation/FilteredList$$Lambda$1;->lambdaFactory$()Ljava/util/function/Predicate;

    move-result-object v0

    sput-object v0, Ljavafx/collections/transformation/FilteredList;->ALWAYS_TRUE:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 5
    .param p1    # Ljavafx/collections/ObservableList;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "source"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v1, p1

    .local v1, "source":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/collections/transformation/FilteredList;-><init>(Ljavafx/collections/ObservableList;Ljava/util/function/Predicate;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;Ljava/util/function/Predicate;)V
    .locals 7
    .param p1    # Ljavafx/collections/ObservableList;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "source"
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Predicate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "predicate"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljava/util/function/Predicate",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v1, p1

    .local v1, "source":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, p2

    .local v2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/collections/transformation/TransformationList;-><init>(Ljavafx/collections/ObservableList;)V

    .line 67
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    iput-object v4, v3, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    .line 68
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 69
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/collections/transformation/FilteredList;->setPredicate(Ljava/util/function/Predicate;)V

    .line 75
    :cond_0
    return-void

    .line 71
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/collections/transformation/FilteredList;->size:I

    :goto_0
    move-object v3, v0

    iget v3, v3, Ljavafx/collections/transformation/FilteredList;->size:I

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 72
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move-object v4, v0

    iget v4, v4, Ljavafx/collections/transformation/FilteredList;->size:I

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/transformation/FilteredList;->size:I

    aput v5, v3, v4

    .line 71
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/collections/transformation/FilteredList;->size:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/collections/transformation/FilteredList;->size:I

    goto :goto_0
.end method

.method static synthetic access$000(Ljavafx/collections/transformation/FilteredList;)V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/collections/transformation/FilteredList;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/transformation/FilteredList;->refilter()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/collections/transformation/FilteredList;->lambda$static$59(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private addRemove(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object/from16 v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/collections/transformation/FilteredList;->getPredicateImpl()Ljava/util/function/Predicate;

    move-result-object v8

    move-object v2, v8

    .line 236
    .local v2, "pred":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/collections/transformation/FilteredList;->getSource()Ljavafx/collections/ObservableList;

    move-result-object v9

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljavafx/collections/transformation/FilteredList;->ensureSize(I)V

    .line 237
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v9

    invoke-direct {v8, v9}, Ljavafx/collections/transformation/FilteredList;->findPosition(I)I

    move-result v8

    move v3, v8

    .line 238
    .local v3, "from":I
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljavafx/collections/transformation/FilteredList;->findPosition(I)I

    move-result v8

    move v4, v8

    .line 241
    .local v4, "to":I
    move v8, v3

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_0

    .line 242
    move-object v8, v0

    move v9, v3

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v12, v5

    aget v11, v11, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljavafx/collections/transformation/FilteredList;->nextRemove(ILjava/lang/Object;)V

    .line 241
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 246
    :cond_0
    move-object v8, v0

    move v9, v4

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-direct {v8, v9, v10}, Ljavafx/collections/transformation/FilteredList;->updateIndexes(II)V

    .line 249
    move v8, v3

    move v5, v8

    .line 250
    .local v5, "fpos":I
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v8

    move v6, v8

    .line 252
    .local v6, "pos":I
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/collections/transformation/FilteredList;->getSource()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v6

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    move-object v7, v8

    .line 253
    .local v7, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TE;>;"
    :cond_1
    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_2

    move-object v8, v7

    invoke-interface {v8}, Ljava/util/ListIterator;->nextIndex()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 254
    move-object v8, v2

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 255
    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v9, v5

    move-object v10, v7

    invoke-interface {v10}, Ljava/util/ListIterator;->previousIndex()I

    move-result v10

    aput v10, v8, v9

    .line 256
    move-object v8, v0

    move v9, v5

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljavafx/collections/transformation/FilteredList;->nextAdd(II)V

    .line 257
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 261
    :cond_2
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_4

    .line 263
    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v11, v5

    move-object v12, v0

    iget v12, v12, Ljavafx/collections/transformation/FilteredList;->size:I

    move v13, v4

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Ljavafx/collections/transformation/FilteredList;->size:I

    move v10, v4

    move v11, v5

    sub-int/2addr v10, v11

    sub-int/2addr v9, v10

    iput v9, v8, Ljavafx/collections/transformation/FilteredList;->size:I

    .line 278
    :cond_3
    return-void

    .line 267
    :cond_4
    :goto_2
    move-object v8, v7

    invoke-interface {v8}, Ljava/util/ListIterator;->nextIndex()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 268
    move-object v8, v2

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 269
    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v0

    iget v12, v12, Ljavafx/collections/transformation/FilteredList;->size:I

    move v13, v5

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v9, v5

    move-object v10, v7

    invoke-interface {v10}, Ljava/util/ListIterator;->previousIndex()I

    move-result v10

    aput v10, v8, v9

    .line 271
    move-object v8, v0

    move v9, v5

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljavafx/collections/transformation/FilteredList;->nextAdd(II)V

    .line 272
    add-int/lit8 v5, v5, 0x1

    .line 273
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Ljavafx/collections/transformation/FilteredList;->size:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Ljavafx/collections/transformation/FilteredList;->size:I

    .line 275
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private ensureSize(I)V
    .locals 8

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move v1, p1

    .local v1, "size":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    array-length v3, v3

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 208
    move v3, v1

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    move-object v2, v3

    .line 209
    .local v2, "replacement":[I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Ljavafx/collections/transformation/FilteredList;->size:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    .line 212
    .end local v2    # "replacement":[I
    :cond_0
    return-void
.end method

.method private findPosition(I)I
    .locals 7

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move v1, p1

    .local v1, "p":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    array-length v3, v3

    if-nez v3, :cond_0

    .line 192
    const/4 v3, 0x0

    move v0, v3

    .line 201
    .end local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    :goto_0
    return v0

    .line 194
    .restart local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    :cond_0
    move v3, v1

    if-nez v3, :cond_1

    .line 195
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 197
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/transformation/FilteredList;->size:I

    move v6, v1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    move v2, v3

    .line 198
    .local v2, "pos":I
    move v3, v2

    if-gez v3, :cond_2

    .line 199
    move v3, v2

    const/4 v4, -0x1

    xor-int/lit8 v3, v3, -0x1

    move v2, v3

    .line 201
    :cond_2
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method private getPredicateImpl()Ljava/util/function/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/transformation/FilteredList;->getPredicate()Ljava/util/function/Predicate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/transformation/FilteredList;->getPredicate()Ljava/util/function/Predicate;

    move-result-object v1

    move-object v0, v1

    .line 132
    .end local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    :cond_0
    sget-object v1, Ljavafx/collections/transformation/FilteredList;->ALWAYS_TRUE:Ljava/util/function/Predicate;

    move-object v0, v1

    goto :goto_0
.end method

.method private getSortHelper()Lcom/sun/javafx/collections/SortHelper;
    .locals 5

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/FilteredList;->helper:Lcom/sun/javafx/collections/SortHelper;

    if-nez v1, :cond_0

    .line 185
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/collections/SortHelper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/collections/SortHelper;-><init>()V

    iput-object v2, v1, Ljavafx/collections/transformation/FilteredList;->helper:Lcom/sun/javafx/collections/SortHelper;

    .line 187
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/FilteredList;->helper:Lcom/sun/javafx/collections/SortHelper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    return-object v0
.end method

.method private static synthetic lambda$static$59(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "t":Ljava/lang/Object;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "t":Ljava/lang/Object;
    return v0
.end method

.method private permutate(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v6

    invoke-direct {v5, v6}, Ljavafx/collections/transformation/FilteredList;->findPosition(I)I

    move-result v5

    move v2, v5

    .line 222
    .local v2, "from":I
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v6

    invoke-direct {v5, v6}, Ljavafx/collections/transformation/FilteredList;->findPosition(I)I

    move-result v5

    move v3, v5

    .line 224
    .local v3, "to":I
    move v5, v3

    move v6, v2

    if-le v5, v6, :cond_1

    .line 225
    move v5, v2

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 226
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v6, v4

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v9, v4

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljavafx/collections/ListChangeListener$Change;->getPermutation(I)I

    move-result v7

    aput v7, v5, v6

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 229
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/collections/transformation/FilteredList;->getSortHelper()Lcom/sun/javafx/collections/SortHelper;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/collections/SortHelper;->sort([III)[I

    move-result-object v5

    move-object v4, v5

    .line 230
    .local v4, "perm":[I
    move-object v5, v0

    move v6, v2

    move v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljavafx/collections/transformation/FilteredList;->nextPermutation(II[I)V

    .line 232
    .end local v4    # "perm":[I
    :cond_1
    return-void
.end method

.method private refilter()V
    .locals 15

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/collections/transformation/FilteredList;->getSource()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljavafx/collections/transformation/FilteredList;->ensureSize(I)V

    .line 318
    const/4 v6, 0x0

    move-object v1, v6

    .line 319
    .local v1, "removed":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/collections/transformation/FilteredList;->hasListeners()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 320
    new-instance v6, Ljava/util/ArrayList;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v6

    .line 322
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Ljavafx/collections/transformation/FilteredList;->size:I

    .line 323
    const/4 v6, 0x0

    move v2, v6

    .line 324
    .local v2, "i":I
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/collections/transformation/FilteredList;->getPredicateImpl()Ljava/util/function/Predicate;

    move-result-object v6

    move-object v3, v6

    .line 325
    .local v3, "pred":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/collections/transformation/FilteredList;->getSource()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 326
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 327
    .local v5, "next":Ljava/lang/Object;, "TE;"
    move-object v6, v3

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 328
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Ljavafx/collections/transformation/FilteredList;->size:I

    move-object v13, v7

    move v14, v8

    move v7, v14

    move-object v8, v13

    move v9, v14

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Ljavafx/collections/transformation/FilteredList;->size:I

    move v8, v2

    aput v8, v6, v7

    .line 330
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 331
    goto :goto_0

    .line 332
    .end local v5    # "next":Ljava/lang/Object;, "TE;"
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/collections/transformation/FilteredList;->hasListeners()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 333
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Ljavafx/collections/transformation/FilteredList;->size:I

    move-object v11, v1

    move-object v12, v0

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    invoke-virtual {v6, v7}, Ljavafx/collections/transformation/FilteredList;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 335
    :cond_3
    return-void
.end method

.method private update(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 281
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object/from16 v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/collections/transformation/FilteredList;->getPredicateImpl()Ljava/util/function/Predicate;

    move-result-object v10

    move-object v2, v10

    .line 282
    .local v2, "pred":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/collections/transformation/FilteredList;->getSource()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljavafx/collections/transformation/FilteredList;->ensureSize(I)V

    .line 283
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v10

    move v3, v10

    .line 284
    .local v3, "sourceFrom":I
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v10

    move v4, v10

    .line 285
    .local v4, "sourceTo":I
    move-object v10, v0

    move v11, v3

    invoke-direct {v10, v11}, Ljavafx/collections/transformation/FilteredList;->findPosition(I)I

    move-result v10

    move v5, v10

    .line 286
    .local v5, "filterFrom":I
    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Ljavafx/collections/transformation/FilteredList;->findPosition(I)I

    move-result v10

    move v6, v10

    .line 287
    .local v6, "filterTo":I
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/collections/transformation/FilteredList;->getSource()Ljavafx/collections/ObservableList;

    move-result-object v10

    move v11, v3

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v10

    move-object v7, v10

    .line 288
    .local v7, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TE;>;"
    move v10, v5

    move v8, v10

    .line 289
    .local v8, "pos":I
    :goto_0
    move v10, v8

    move v11, v6

    if-lt v10, v11, :cond_0

    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_4

    .line 290
    :cond_0
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 291
    .local v9, "el":Ljava/lang/Object;, "TE;"
    move v10, v8

    move-object v11, v0

    iget v11, v11, Ljavafx/collections/transformation/FilteredList;->size:I

    if-ge v10, v11, :cond_3

    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v11, v8

    aget v10, v10, v11

    move v11, v3

    if-ne v10, v11, :cond_3

    .line 292
    move-object v10, v2

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 293
    move-object v10, v0

    move v11, v8

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Ljavafx/collections/transformation/FilteredList;->nextRemove(ILjava/lang/Object;)V

    .line 294
    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v0

    iget-object v12, v12, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v13, v8

    move-object v14, v0

    iget v14, v14, Ljavafx/collections/transformation/FilteredList;->size:I

    move v15, v8

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    move-object v10, v0

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget v11, v11, Ljavafx/collections/transformation/FilteredList;->size:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Ljavafx/collections/transformation/FilteredList;->size:I

    .line 296
    add-int/lit8 v6, v6, -0x1

    .line 311
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 312
    goto :goto_0

    .line 298
    :cond_2
    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Ljavafx/collections/transformation/FilteredList;->nextUpdate(I)V

    .line 299
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 302
    :cond_3
    move-object v10, v2

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 303
    move-object v10, v0

    move v11, v8

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljavafx/collections/transformation/FilteredList;->nextAdd(II)V

    .line 304
    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v13, v8

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object v14, v0

    iget v14, v14, Ljavafx/collections/transformation/FilteredList;->size:I

    move v15, v8

    sub-int/2addr v14, v15

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v11, v8

    move v12, v3

    aput v12, v10, v11

    .line 306
    move-object v10, v0

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget v11, v11, Ljavafx/collections/transformation/FilteredList;->size:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Ljavafx/collections/transformation/FilteredList;->size:I

    .line 307
    add-int/lit8 v8, v8, 0x1

    .line 308
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 313
    .end local v9    # "el":Ljava/lang/Object;, "TE;"
    :cond_4
    return-void
.end method

.method private updateIndexes(II)V
    .locals 10

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "delta":I
    move v4, v1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/transformation/FilteredList;->size:I

    if-ge v4, v5, :cond_0

    .line 216
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v5, v3

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    move v7, v2

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljavafx/collections/transformation/FilteredList;->size:I

    if-lt v2, v3, :cond_0

    .line 170
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 172
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/transformation/FilteredList;->getSource()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v4, v1

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    return-object v0
.end method

.method public final getPredicate()Ljava/util/function/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/FilteredList;->predicate:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/FilteredList;->predicate:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Predicate;

    goto :goto_0
.end method

.method public getSourceIndex(I)I
    .locals 5

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljavafx/collections/transformation/FilteredList;->size:I

    if-lt v2, v3, :cond_0

    .line 178
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 180
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/transformation/FilteredList;->filtered:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    return v0
.end method

.method public final predicateProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/util/function/Predicate",
            "<-TE;>;>;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/FilteredList;->predicate:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 99
    move-object v1, v0

    new-instance v2, Ljavafx/collections/transformation/FilteredList$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/collections/transformation/FilteredList$1;-><init>(Ljavafx/collections/transformation/FilteredList;)V

    iput-object v2, v1, Ljavafx/collections/transformation/FilteredList;->predicate:Ljavafx/beans/property/ObjectProperty;

    .line 117
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/FilteredList;->predicate:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    return-object v0
.end method

.method public final setPredicate(Ljava/util/function/Predicate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v1, p1

    .local v1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/transformation/FilteredList;->predicateProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/collections/transformation/FilteredList;->size:I

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    return v0
.end method

.method protected sourceChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList;, "Ljavafx/collections/transformation/FilteredList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/transformation/FilteredList;->beginChange()V

    .line 138
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/transformation/FilteredList;->permutate(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_0

    .line 141
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasUpdated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/transformation/FilteredList;->update(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_0

    .line 144
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/transformation/FilteredList;->addRemove(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_0

    .line 147
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/transformation/FilteredList;->endChange()V

    .line 148
    return-void
.end method
