.class public final Ljavafx/collections/transformation/SortedList;
.super Ljavafx/collections/transformation/TransformationList;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/collections/transformation/SortedList$ElementComparator;,
        Ljavafx/collections/transformation/SortedList$Element;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/transformation/TransformationList",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field private comparator:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/util/Comparator",
            "<-TE;>;>;"
        }
    .end annotation
.end field

.field private elementComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljavafx/collections/transformation/SortedList$Element",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final helper:Lcom/sun/javafx/collections/SortHelper;

.field private size:I

.field private sorted:[Ljavafx/collections/transformation/SortedList$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/collections/transformation/SortedList$Element",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final tempElement:Ljavafx/collections/transformation/SortedList$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/transformation/SortedList$Element",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
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
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "source":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+TE;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    check-cast v4, Ljava/util/Comparator;

    invoke-direct {v2, v3, v4}, Ljavafx/collections/transformation/SortedList;-><init>(Ljavafx/collections/ObservableList;Ljava/util/Comparator;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;Ljava/util/Comparator;)V
    .locals 11
    .param p1    # Ljavafx/collections/ObservableList;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "source"
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "comparator"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "source":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+TE;>;"
    move-object v2, p2

    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/collections/transformation/TransformationList;-><init>(Ljavafx/collections/ObservableList;)V

    .line 60
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/collections/SortHelper;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/sun/javafx/collections/SortHelper;-><init>()V

    iput-object v5, v4, Ljavafx/collections/transformation/SortedList;->helper:Lcom/sun/javafx/collections/SortHelper;

    .line 62
    move-object v4, v0

    new-instance v5, Ljavafx/collections/transformation/SortedList$Element;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Ljavafx/collections/transformation/SortedList$Element;-><init>(Ljava/lang/Object;I)V

    iput-object v5, v4, Ljavafx/collections/transformation/SortedList;->tempElement:Ljavafx/collections/transformation/SortedList$Element;

    .line 75
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljavafx/collections/transformation/SortedList$Element;

    check-cast v5, [Ljavafx/collections/transformation/SortedList$Element;

    iput-object v5, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    .line 76
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    iput v5, v4, Ljavafx/collections/transformation/SortedList;->size:I

    .line 77
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    if-ge v4, v5, :cond_0

    .line 78
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v5, v3

    new-instance v6, Ljavafx/collections/transformation/SortedList$Element;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move v9, v3

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move v9, v3

    invoke-direct {v7, v8, v9}, Ljavafx/collections/transformation/SortedList$Element;-><init>(Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 81
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/collections/transformation/SortedList;->setComparator(Ljava/util/Comparator;)V

    .line 84
    :cond_1
    return-void
.end method

.method static synthetic access$002(Ljavafx/collections/transformation/SortedList;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "x0":Ljavafx/collections/transformation/SortedList;
    move-object v1, p1

    .local v1, "x1":Ljava/util/Comparator;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/collections/transformation/SortedList;->elementComparator:Ljava/util/Comparator;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/collections/transformation/SortedList;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/collections/transformation/SortedList;)V
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "x0":Ljavafx/collections/transformation/SortedList;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/transformation/SortedList;->doSortWithPermutationChange()V

    return-void
.end method

.method private addRemove(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    if-ne v4, v5, :cond_2

    .line 386
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/collections/transformation/SortedList;->removeAllFromMapping()V

    .line 392
    :cond_0
    move-object v4, v0

    iget v4, v4, Ljavafx/collections/transformation/SortedList;->size:I

    if-nez v4, :cond_3

    .line 393
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->setAllToMapping(Ljava/util/List;I)V

    .line 400
    :cond_1
    return-void

    .line 388
    :cond_2
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v4

    move v3, v4

    .local v3, "sz":I
    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 389
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v6

    move v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->removeFromMapping(ILjava/lang/Object;)V

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    .end local v2    # "i":I
    .end local v3    # "sz":I
    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    move v2, v4

    .restart local v2    # "i":I
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v4

    move v3, v4

    .local v3, "to":I
    :goto_1
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 397
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->insertToMapping(Ljava/lang/Object;I)V

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "e1":Ljava/lang/Object;, "TE;"
    move-object v2, p2

    .local v2, "e2":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/collections/transformation/SortedList;->getComparator()Ljava/util/Comparator;

    move-result-object v4

    move-object v3, v4

    .line 311
    .local v3, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    move-object v4, v3

    if-nez v4, :cond_0

    move-object v4, v1

    check-cast v4, Ljava/lang/Comparable;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 312
    :goto_0
    move v0, v4

    .end local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    return v0

    .line 311
    .restart local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    :cond_0
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    .line 312
    invoke-interface {v4, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto :goto_0
.end method

.method private doSortWithPermutationChange()V
    .locals 18

    .prologue
    .line 181
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/SortedList;->elementComparator:Ljava/util/Comparator;

    if-eqz v8, :cond_1

    .line 182
    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/SortedList;->helper:Lcom/sun/javafx/collections/SortHelper;

    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    const/4 v10, 0x0

    move-object v11, v0

    iget v11, v11, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v12, v0

    iget-object v12, v12, Ljavafx/collections/transformation/SortedList;->elementComparator:Ljava/util/Comparator;

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/collections/SortHelper;->sort([Ljava/lang/Object;IILjava/util/Comparator;)[I

    move-result-object v8

    move-object v1, v8

    .line 183
    .local v1, "perm":[I
    move-object v8, v0

    new-instance v9, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v0

    iget v12, v12, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v13, v1

    move-object v14, v0

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;-><init>(II[ILjavafx/collections/ObservableList;)V

    invoke-virtual {v8, v9}, Ljavafx/collections/transformation/SortedList;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 184
    .line 212
    :cond_0
    :goto_0
    return-void

    .line 185
    .end local v1    # "perm":[I
    :cond_1
    move-object v8, v0

    iget v8, v8, Ljavafx/collections/transformation/SortedList;->size:I

    new-array v8, v8, [I

    move-object v1, v8

    .line 186
    .restart local v1    # "perm":[I
    move-object v8, v0

    iget v8, v8, Ljavafx/collections/transformation/SortedList;->size:I

    new-array v8, v8, [I

    move-object v2, v8

    .line 187
    .local v2, "rperm":[I
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_1
    move v8, v3

    move-object v9, v0

    iget v9, v9, Ljavafx/collections/transformation/SortedList;->size:I

    if-ge v8, v9, :cond_2

    .line 188
    move-object v8, v1

    move v9, v3

    move-object v10, v2

    move v11, v3

    move v12, v3

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v10, v17

    move-object v11, v15

    move/from16 v12, v16

    move/from16 v13, v17

    aput v13, v11, v12

    aput v10, v8, v9

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    :cond_2
    const/4 v8, 0x0

    move v3, v8

    .line 191
    .local v3, "changed":Z
    const/4 v8, 0x0

    move v4, v8

    .line 192
    .local v4, "idx":I
    :goto_2
    move v8, v4

    move-object v9, v0

    iget v9, v9, Ljavafx/collections/transformation/SortedList;->size:I

    if-ge v8, v9, :cond_4

    .line 193
    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v9, v4

    aget-object v8, v8, v9

    invoke-static {v8}, Ljavafx/collections/transformation/SortedList$Element;->access$300(Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v8

    move v5, v8

    .line 194
    .local v5, "otherIdx":I
    move v8, v5

    move v9, v4

    if-ne v8, v9, :cond_3

    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 196
    goto :goto_2

    .line 198
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 199
    .local v6, "other":Ljavafx/collections/transformation/SortedList$Element;, "Ljavafx/collections/transformation/SortedList$Element<TE;>;"
    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v9, v5

    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v11, v4

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 200
    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v9, v4

    move-object v10, v6

    aput-object v10, v8, v9

    .line 201
    move-object v8, v1

    move-object v9, v2

    move v10, v4

    aget v9, v9, v10

    move v10, v5

    aput v10, v8, v9

    .line 202
    move-object v8, v1

    move-object v9, v2

    move v10, v5

    aget v9, v9, v10

    move v10, v4

    aput v10, v8, v9

    .line 203
    move-object v8, v2

    move v9, v4

    aget v8, v8, v9

    move v7, v8

    .line 204
    .local v7, "tp":I
    move-object v8, v2

    move v9, v4

    move-object v10, v2

    move v11, v5

    aget v10, v10, v11

    aput v10, v8, v9

    .line 205
    move-object v8, v2

    move v9, v5

    move v10, v7

    aput v10, v8, v9

    .line 206
    const/4 v8, 0x1

    move v3, v8

    .line 207
    goto :goto_2

    .line 208
    .end local v5    # "otherIdx":I
    .end local v6    # "other":Ljavafx/collections/transformation/SortedList$Element;, "Ljavafx/collections/transformation/SortedList$Element<TE;>;"
    .end local v7    # "tp":I
    :cond_4
    move v8, v3

    if-eqz v8, :cond_0

    .line 209
    move-object v8, v0

    new-instance v9, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v0

    iget v12, v12, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v13, v1

    move-object v14, v0

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;-><init>(II[ILjavafx/collections/ObservableList;)V

    invoke-virtual {v8, v9}, Ljavafx/collections/transformation/SortedList;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    goto/16 :goto_0
.end method

.method private ensureSize(I)V
    .locals 8

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move v1, p1

    .local v1, "size":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    array-length v3, v3

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 286
    move v3, v1

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljavafx/collections/transformation/SortedList$Element;

    move-object v2, v3

    .line 287
    .local v2, "replacement":[Ljavafx/collections/transformation/SortedList$Element;, "[Ljavafx/collections/transformation/SortedList$Element<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Ljavafx/collections/transformation/SortedList;->size:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    move-object v3, v0

    move-object v4, v2

    check-cast v4, [Ljavafx/collections/transformation/SortedList$Element;

    iput-object v4, v3, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    .line 290
    .end local v2    # "replacement":[Ljavafx/collections/transformation/SortedList$Element;, "[Ljavafx/collections/transformation/SortedList$Element<TE;>;"
    :cond_0
    return-void
.end method

.method private findPosition(ILjava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move v1, p1

    .local v1, "idx":I
    move-object v2, p2

    .local v2, "e":Ljava/lang/Object;, "TE;"
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Ljavafx/collections/transformation/SortedList;->findPosition(Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 318
    .local v3, "pos":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v6, v3

    aget-object v5, v5, v6

    invoke-static {v5}, Ljavafx/collections/transformation/SortedList$Element;->access$300(Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 319
    move v5, v3

    move v0, v5

    .line 331
    .end local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    :goto_0
    return v0

    .line 321
    .restart local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    :cond_0
    move v5, v3

    move v4, v5

    .line 322
    .local v4, "tmp":I
    :goto_1
    move v5, v4

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    add-int/lit8 v4, v4, -0x1

    move v6, v4

    aget-object v5, v5, v6

    invoke-static {v5}, Ljavafx/collections/transformation/SortedList$Element;->access$300(Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v5

    move v6, v1

    if-eq v5, v6, :cond_1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v7, v4

    aget-object v6, v6, v7

    invoke-static {v6}, Ljavafx/collections/transformation/SortedList$Element;->access$200(Ljavafx/collections/transformation/SortedList$Element;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljavafx/collections/transformation/SortedList;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 323
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v6, v4

    aget-object v5, v5, v6

    invoke-static {v5}, Ljavafx/collections/transformation/SortedList$Element;->access$300(Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_2

    .line 324
    move v5, v4

    move v0, v5

    goto :goto_0

    .line 326
    :cond_2
    move v5, v3

    move v4, v5

    .line 327
    :goto_2
    move v5, v4

    move-object v6, v0

    iget v6, v6, Ljavafx/collections/transformation/SortedList;->size:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    aget-object v5, v5, v6

    invoke-static {v5}, Ljavafx/collections/transformation/SortedList$Element;->access$300(Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v5

    move v6, v1

    if-eq v5, v6, :cond_3

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v7, v4

    aget-object v6, v6, v7

    invoke-static {v6}, Ljavafx/collections/transformation/SortedList$Element;->access$200(Ljavafx/collections/transformation/SortedList$Element;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljavafx/collections/transformation/SortedList;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 328
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v6, v4

    aget-object v5, v5, v6

    invoke-static {v5}, Ljavafx/collections/transformation/SortedList$Element;->access$300(Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_4

    .line 329
    move v5, v4

    move v0, v5

    goto :goto_0

    .line 331
    :cond_4
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0
.end method

.method private findPosition(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    array-length v3, v3

    if-nez v3, :cond_0

    .line 302
    const/4 v3, 0x0

    move v0, v3

    .line 306
    .end local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    :goto_0
    return v0

    .line 304
    .restart local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/SortedList;->tempElement:Ljavafx/collections/transformation/SortedList$Element;

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/collections/transformation/SortedList$Element;->access$202(Ljavafx/collections/transformation/SortedList$Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 305
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/SortedList;->tempElement:Ljavafx/collections/transformation/SortedList$Element;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/transformation/SortedList;->elementComparator:Ljava/util/Comparator;

    invoke-static {v3, v4, v5, v6, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    move v2, v3

    .line 306
    .local v2, "pos":I
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method private insertToMapping(Ljava/lang/Object;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move v2, p2

    .local v2, "idx":I
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/collections/transformation/SortedList;->findPosition(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 336
    .local v3, "pos":I
    move v4, v3

    if-gez v4, :cond_0

    .line 337
    move v4, v3

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    move v3, v4

    .line 339
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljavafx/collections/transformation/SortedList;->ensureSize(I)V

    .line 340
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->updateIndices(II)V

    .line 341
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget v8, v8, Ljavafx/collections/transformation/SortedList;->size:I

    move v9, v3

    sub-int/2addr v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v5, v3

    new-instance v6, Ljavafx/collections/transformation/SortedList$Element;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Ljavafx/collections/transformation/SortedList$Element;-><init>(Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    .line 343
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Ljavafx/collections/transformation/SortedList;->size:I

    .line 344
    move-object v4, v0

    move v5, v3

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->nextAdd(II)V

    .line 346
    return-void
.end method

.method private removeAllFromMapping()V
    .locals 7

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    .line 369
    .local v1, "removed":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Ljavafx/collections/transformation/SortedList;->size:I

    if-ge v3, v4, :cond_0

    .line 370
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v4, v2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/collections/transformation/SortedList;->size:I

    .line 373
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/transformation/SortedList;->nextRemove(ILjava/util/List;)V

    .line 374
    return-void
.end method

.method private removeFromMapping(ILjava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move v1, p1

    .local v1, "idx":I
    move-object v2, p2

    .local v2, "e":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->findPosition(ILjava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 360
    .local v3, "pos":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v7, v3

    move-object v8, v0

    iget v8, v8, Ljavafx/collections/transformation/SortedList;->size:I

    move v9, v3

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Ljavafx/collections/transformation/SortedList;->size:I

    .line 362
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 363
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->updateIndices(II)V

    .line 364
    move-object v4, v0

    move v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->nextRemove(ILjava/lang/Object;)V

    .line 365
    return-void
.end method

.method private setAllToMapping(Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    move v2, p2

    .local v2, "to":I
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Ljavafx/collections/transformation/SortedList;->ensureSize(I)V

    .line 350
    move-object v4, v0

    move v5, v2

    iput v5, v4, Ljavafx/collections/transformation/SortedList;->size:I

    .line 351
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 352
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v5, v3

    new-instance v6, Ljavafx/collections/transformation/SortedList$Element;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move v9, v3

    invoke-direct {v7, v8, v9}, Ljavafx/collections/transformation/SortedList$Element;-><init>(Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/transformation/SortedList;->elementComparator:Ljava/util/Comparator;

    invoke-static {v4, v5, v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 355
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Ljavafx/collections/transformation/SortedList;->size:I

    invoke-virtual {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->nextAdd(II)V

    .line 356
    return-void
.end method

.method private update(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/transformation/SortedList;->helper:Lcom/sun/javafx/collections/SortHelper;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/transformation/SortedList;->elementComparator:Ljava/util/Comparator;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/collections/SortHelper;->sort([Ljava/lang/Object;IILjava/util/Comparator;)[I

    move-result-object v5

    move-object v2, v5

    .line 378
    .local v2, "perm":[I
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v8, v2

    invoke-virtual {v5, v6, v7, v8}, Ljavafx/collections/transformation/SortedList;->nextPermutation(II[I)V

    .line 379
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v5

    move v3, v5

    .local v3, "i":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v5

    move v4, v5

    .local v4, "to":I
    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    .line 380
    move-object v5, v0

    move-object v6, v0

    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v3

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavafx/collections/transformation/SortedList;->findPosition(ILjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljavafx/collections/transformation/SortedList;->nextUpdate(I)V

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method

.method private updateIndices(II)V
    .locals 8

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "difference":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Ljavafx/collections/transformation/SortedList;->size:I

    if-ge v5, v6, :cond_1

    .line 294
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v6, v3

    aget-object v5, v5, v6

    invoke-static {v5}, Ljavafx/collections/transformation/SortedList$Element;->access$300(Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v5

    move v6, v1

    if-lt v5, v6, :cond_0

    .line 295
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    move-object v5, v4

    move-object v6, v4

    invoke-static {v6}, Ljavafx/collections/transformation/SortedList$Element;->access$300(Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v6

    move v7, v2

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljavafx/collections/transformation/SortedList$Element;->access$302(Ljavafx/collections/transformation/SortedList$Element;I)I

    move-result v5

    .line 293
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    :cond_1
    return-void
.end method

.method private updatePermutationIndexes(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Ljavafx/collections/transformation/SortedList;->size:I

    if-ge v3, v4, :cond_0

    .line 221
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v6, v2

    aget-object v5, v5, v6

    invoke-static {v5}, Ljavafx/collections/transformation/SortedList$Element;->access$300(Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/collections/ListChangeListener$Change;->getPermutation(I)I

    move-result v4

    invoke-static {v3, v4}, Ljavafx/collections/transformation/SortedList$Element;->access$302(Ljavafx/collections/transformation/SortedList$Element;I)I

    move-result v3

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method private updateUnsorted(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    :cond_0
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 227
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 228
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    array-length v4, v4

    new-array v4, v4, [Ljavafx/collections/transformation/SortedList$Element;

    move-object v2, v4

    .line 229
    .local v2, "sortedTmp":[Ljavafx/collections/transformation/SortedList$Element;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    if-ge v4, v5, :cond_2

    .line 230
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v5

    if-lt v4, v5, :cond_1

    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 231
    move-object v4, v2

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/collections/ListChangeListener$Change;->getPermutation(I)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v7, v3

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 229
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 233
    :cond_1
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v7, v3

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    goto :goto_2

    .line 236
    :cond_2
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    .line 238
    .end local v2    # "sortedTmp":[Ljavafx/collections/transformation/SortedList$Element;
    .end local v3    # "i":I
    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v5

    add-int/2addr v4, v5

    move v2, v4

    .line 240
    .local v2, "removedTo":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Ljavafx/collections/transformation/SortedList;->size:I

    move v9, v2

    sub-int/2addr v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Ljavafx/collections/transformation/SortedList;->size:I

    .line 242
    move-object v4, v0

    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v6

    neg-int v6, v6

    invoke-direct {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->updateIndices(II)V

    .line 244
    .end local v2    # "removedTo":I
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljavafx/collections/transformation/SortedList;->ensureSize(I)V

    .line 246
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljavafx/collections/transformation/SortedList;->updateIndices(II)V

    .line 247
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Ljavafx/collections/transformation/SortedList;->size:I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Ljavafx/collections/transformation/SortedList;->size:I

    .line 249
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    move v2, v4

    .local v2, "i":I
    :goto_3
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 250
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v5, v2

    new-instance v6, Ljavafx/collections/transformation/SortedList$Element;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v2

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move v9, v2

    invoke-direct {v7, v8, v9}, Ljavafx/collections/transformation/SortedList$Element;-><init>(Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    goto/16 :goto_0

    .line 254
    .end local v2    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public final comparatorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/util/Comparator",
            "<-TE;>;>;"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/SortedList;->comparator:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 123
    move-object v1, v0

    new-instance v2, Ljavafx/collections/transformation/SortedList$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/collections/transformation/SortedList$1;-><init>(Ljavafx/collections/transformation/SortedList;)V

    iput-object v2, v1, Ljavafx/collections/transformation/SortedList;->comparator:Ljavafx/beans/property/ObjectProperty;

    .line 144
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/SortedList;->comparator:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljavafx/collections/transformation/SortedList;->size:I

    if-lt v2, v3, :cond_0

    .line 165
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 167
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v3, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljavafx/collections/transformation/SortedList$Element;->access$200(Ljavafx/collections/transformation/SortedList$Element;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    return-object v0
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/SortedList;->comparator:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/SortedList;->comparator:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    goto :goto_0
.end method

.method public getSourceIndex(I)I
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/transformation/SortedList;->sorted:[Ljavafx/collections/transformation/SortedList$Element;

    move v3, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljavafx/collections/transformation/SortedList$Element;->access$300(Ljavafx/collections/transformation/SortedList$Element;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    return v0
.end method

.method public final setComparator(Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/transformation/SortedList;->comparatorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/collections/transformation/SortedList;->size:I

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    return v0
.end method

.method protected sourceChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList;, "Ljavafx/collections/transformation/SortedList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/transformation/SortedList;->elementComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_3

    .line 98
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/transformation/SortedList;->beginChange()V

    .line 99
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/transformation/SortedList;->updatePermutationIndexes(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_0

    .line 102
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasUpdated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/transformation/SortedList;->update(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_0

    .line 105
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/transformation/SortedList;->addRemove(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_0

    .line 108
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/transformation/SortedList;->endChange()V

    .line 113
    :goto_1
    return-void

    .line 110
    :cond_3
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/transformation/SortedList;->updateUnsorted(Ljavafx/collections/ListChangeListener$Change;)V

    .line 111
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/collections/SourceAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SourceAdapterChange;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;)V

    invoke-virtual {v2, v3}, Ljavafx/collections/transformation/SortedList;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_1
.end method
