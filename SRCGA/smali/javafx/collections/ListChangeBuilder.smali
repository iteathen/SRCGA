.class final Ljavafx/collections/ListChangeBuilder;
.super Ljava/lang/Object;
.source "ListChangeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/collections/ListChangeBuilder$IterableChange;,
        Ljavafx/collections/ListChangeBuilder$SingleChange;,
        Ljavafx/collections/ListChangeBuilder$SubChange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_PERM:[I


# instance fields
.field private addRemoveChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private changeLock:I

.field private final list:Ljavafx/collections/ObservableListBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableListBase",
            "<TE;>;"
        }
    .end annotation
.end field

.field private permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;"
        }
    .end annotation
.end field

.field private updateChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Ljavafx/collections/ListChangeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/collections/ListChangeBuilder;->$assertionsDisabled:Z

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Ljavafx/collections/ListChangeBuilder;->EMPTY_PERM:[I

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljavafx/collections/ObservableListBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableListBase",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 193
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    .line 194
    return-void
.end method

.method private checkAddRemoveList()V
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    if-nez v1, :cond_0

    .line 50
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    .line 52
    :cond_0
    return-void
.end method

.method private checkState()V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/collections/ListChangeBuilder;->changeLock:I

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "beginChange was not called on this builder"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    return-void
.end method

.method private commit()V
    .locals 16

    .prologue
    .line 472
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    if-eqz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    move v1, v9

    .line 473
    .local v1, "addRemoveNotEmpty":Z
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    move v2, v9

    .line 474
    .local v2, "updateNotEmpty":Z
    move-object v9, v0

    iget v9, v9, Ljavafx/collections/ListChangeBuilder;->changeLock:I

    if-nez v9, :cond_1

    move v9, v1

    if-nez v9, :cond_0

    move v9, v2

    if-nez v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    if-eqz v9, :cond_1

    .line 478
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    :goto_2
    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    if-eqz v10, :cond_5

    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    .line 479
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    :goto_3
    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_4
    add-int/2addr v9, v10

    move v3, v9

    .line 480
    .local v3, "totalSize":I
    move v9, v3

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 481
    move v9, v1

    if-eqz v9, :cond_7

    .line 482
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    new-instance v10, Ljavafx/collections/ListChangeBuilder$SingleChange;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    iget-object v12, v12, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/collections/ListChangeBuilder$SubChange;

    invoke-static {v12}, Ljavafx/collections/ListChangeBuilder;->finalizeSubChange(Ljavafx/collections/ListChangeBuilder$SubChange;)Ljavafx/collections/ListChangeBuilder$SubChange;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    invoke-direct {v11, v12, v13}, Ljavafx/collections/ListChangeBuilder$SingleChange;-><init>(Ljavafx/collections/ListChangeBuilder$SubChange;Ljavafx/collections/ObservableListBase;)V

    invoke-virtual {v9, v10}, Ljavafx/collections/ObservableListBase;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 483
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 530
    .end local v3    # "totalSize":I
    :cond_1
    :goto_5
    return-void

    .line 472
    .end local v1    # "addRemoveNotEmpty":Z
    .end local v2    # "updateNotEmpty":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 473
    .restart local v1    # "addRemoveNotEmpty":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 478
    .restart local v2    # "updateNotEmpty":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 479
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 484
    .restart local v3    # "totalSize":I
    :cond_7
    move v9, v2

    if-eqz v9, :cond_8

    .line 485
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    new-instance v10, Ljavafx/collections/ListChangeBuilder$SingleChange;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    iget-object v12, v12, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/collections/ListChangeBuilder$SubChange;

    invoke-static {v12}, Ljavafx/collections/ListChangeBuilder;->finalizeSubChange(Ljavafx/collections/ListChangeBuilder$SubChange;)Ljavafx/collections/ListChangeBuilder$SubChange;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    invoke-direct {v11, v12, v13}, Ljavafx/collections/ListChangeBuilder$SingleChange;-><init>(Ljavafx/collections/ListChangeBuilder$SubChange;Ljavafx/collections/ObservableListBase;)V

    invoke-virtual {v9, v10}, Ljavafx/collections/ObservableListBase;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 486
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    goto :goto_5

    .line 488
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    new-instance v10, Ljavafx/collections/ListChangeBuilder$SingleChange;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    iget-object v12, v12, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    invoke-static {v12}, Ljavafx/collections/ListChangeBuilder;->finalizeSubChange(Ljavafx/collections/ListChangeBuilder$SubChange;)Ljavafx/collections/ListChangeBuilder$SubChange;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    invoke-direct {v11, v12, v13}, Ljavafx/collections/ListChangeBuilder$SingleChange;-><init>(Ljavafx/collections/ListChangeBuilder$SubChange;Ljavafx/collections/ObservableListBase;)V

    invoke-virtual {v9, v10}, Ljavafx/collections/ObservableListBase;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 489
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    goto :goto_5

    .line 492
    :cond_9
    move v9, v2

    if-eqz v9, :cond_a

    .line 493
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-direct {v9, v10}, Ljavafx/collections/ListChangeBuilder;->compress(Ljava/util/List;)I

    move-result v9

    move v4, v9

    .line 494
    .local v4, "removed":I
    move v9, v3

    move v10, v4

    sub-int/2addr v9, v10

    move v3, v9

    .line 496
    .end local v4    # "removed":I
    :cond_a
    move v9, v1

    if-eqz v9, :cond_b

    .line 497
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-direct {v9, v10}, Ljavafx/collections/ListChangeBuilder;->compress(Ljava/util/List;)I

    move-result v9

    move v4, v9

    .line 498
    .restart local v4    # "removed":I
    move v9, v3

    move v10, v4

    sub-int/2addr v9, v10

    move v3, v9

    .line 501
    .end local v4    # "removed":I
    :cond_b
    move v9, v3

    new-array v9, v9, [Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v4, v9

    .line 502
    .local v4, "array":[Ljavafx/collections/ListChangeBuilder$SubChange;, "[Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    const/4 v9, 0x0

    move v5, v9

    .line 503
    .local v5, "ptr":I
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    if-eqz v9, :cond_c

    .line 504
    move-object v9, v4

    move v10, v5

    add-int/lit8 v5, v5, 0x1

    move-object v11, v0

    iget-object v11, v11, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    aput-object v11, v9, v10

    .line 506
    :cond_c
    move v9, v1

    if-eqz v9, :cond_e

    .line 507
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v6, v9

    .line 508
    .local v6, "sz":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_6
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_e

    .line 509
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v8, v9

    .line 510
    .local v8, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v9, v8

    if-eqz v9, :cond_d

    .line 511
    move-object v9, v4

    move v10, v5

    add-int/lit8 v5, v5, 0x1

    move-object v11, v8

    aput-object v11, v9, v10

    .line 508
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 515
    .end local v6    # "sz":I
    .end local v7    # "i":I
    .end local v8    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_e
    move v9, v2

    if-eqz v9, :cond_10

    .line 516
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v6, v9

    .line 517
    .restart local v6    # "sz":I
    const/4 v9, 0x0

    move v7, v9

    .restart local v7    # "i":I
    :goto_7
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_10

    .line 518
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v8, v9

    .line 519
    .restart local v8    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v9, v8

    if-eqz v9, :cond_f

    .line 520
    move-object v9, v4

    move v10, v5

    add-int/lit8 v5, v5, 0x1

    move-object v11, v8

    aput-object v11, v9, v10

    .line 517
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 524
    .end local v6    # "sz":I
    .end local v7    # "i":I
    .end local v8    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_10
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    new-instance v10, Ljavafx/collections/ListChangeBuilder$IterableChange;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v4

    invoke-static {v12}, Ljavafx/collections/ListChangeBuilder;->finalizeSubChangeArray([Ljavafx/collections/ListChangeBuilder$SubChange;)[Ljavafx/collections/ListChangeBuilder$SubChange;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Ljavafx/collections/ListChangeBuilder$IterableChange;-><init>([Ljavafx/collections/ListChangeBuilder$SubChange;Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeBuilder$1;)V

    invoke-virtual {v9, v10}, Ljavafx/collections/ObservableListBase;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 525
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    if-eqz v9, :cond_11

    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 526
    :cond_11
    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    if-eqz v9, :cond_12

    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 527
    :cond_12
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    goto/16 :goto_5
.end method

.method private compress(Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;>;)I"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;>;"
    const/4 v7, 0x0

    move v2, v7

    .line 155
    .local v2, "removed":I
    move-object v7, v1

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v3, v7

    .line 156
    .local v3, "prev":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    const/4 v7, 0x1

    move v4, v7

    .local v4, "i":I
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v5, v7

    .local v5, "sz":I
    :goto_0
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_4

    .line 157
    move-object v7, v1

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v6, v7

    .line 158
    .local v6, "cur":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v7, v3

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move-object v8, v6

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    if-ne v7, v8, :cond_3

    .line 159
    move-object v7, v3

    move-object v8, v6

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    iput v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 160
    move-object v7, v3

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    if-nez v7, :cond_0

    move-object v7, v6

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 161
    :cond_0
    move-object v7, v3

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    if-nez v7, :cond_1

    .line 162
    move-object v7, v3

    new-instance v8, Ljava/util/ArrayList;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    .line 164
    :cond_1
    move-object v7, v3

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object v8, v6

    iget-object v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 166
    :cond_2
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 167
    add-int/lit8 v2, v2, 0x1

    .line 156
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_3
    move-object v7, v6

    move-object v3, v7

    goto :goto_1

    .line 172
    .end local v6    # "cur":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_4
    move v7, v2

    move v0, v7

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    return v0
.end method

.method private static finalizeSubChange(Ljavafx/collections/ListChangeBuilder$SubChange;)Ljavafx/collections/ListChangeBuilder$SubChange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;)",
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "c":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    if-nez v1, :cond_0

    .line 553
    move-object v1, v0

    sget-object v2, Ljavafx/collections/ListChangeBuilder;->EMPTY_PERM:[I

    iput-object v2, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    .line 555
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    if-nez v1, :cond_1

    .line 556
    move-object v1, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    .line 560
    :goto_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "c":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    return-object v0

    .line 558
    .restart local v0    # "c":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    goto :goto_0
.end method

.method private static finalizeSubChangeArray([Ljavafx/collections/ListChangeBuilder$SubChange;)[Ljavafx/collections/ListChangeBuilder$SubChange;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;)[",
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "changes":[Ljavafx/collections/ListChangeBuilder$SubChange;, "[Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v5, v0

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 546
    .local v4, "c":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v5, v4

    invoke-static {v5}, Ljavafx/collections/ListChangeBuilder;->finalizeSubChange(Ljavafx/collections/ListChangeBuilder$SubChange;)Ljavafx/collections/ListChangeBuilder$SubChange;

    move-result-object v5

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 548
    .end local v4    # "c":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "changes":[Ljavafx/collections/ListChangeBuilder$SubChange;, "[Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    return-object v0
.end method

.method private findSubChange(ILjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljavafx/collections/ListChangeBuilder$SubChange",
            "<TE;>;>;)I"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move v1, p1

    .local v1, "idx":I
    move-object v2, p2

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;>;"
    const/4 v7, 0x0

    move v3, v7

    .line 62
    .local v3, "from":I
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .line 64
    .local v4, "to":I
    :goto_0
    move v7, v3

    move v8, v4

    if-gt v7, v8, :cond_2

    .line 65
    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v5, v7

    .line 66
    .local v5, "changeIdx":I
    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v6, v7

    .line 68
    .local v6, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move v7, v1

    move-object v8, v6

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    if-lt v7, v8, :cond_0

    .line 69
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v3, v7

    .line 75
    :goto_1
    goto :goto_0

    .line 70
    :cond_0
    move v7, v1

    move-object v8, v6

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    if-ge v7, v8, :cond_1

    .line 71
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    goto :goto_1

    .line 73
    :cond_1
    move v7, v5

    move v0, v7

    .line 76
    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    .end local v5    # "changeIdx":I
    .end local v6    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :goto_2
    return v0

    .restart local v0    # "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    :cond_2
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_2
.end method

.method private insertAdd(II)V
    .locals 17

    .prologue
    .line 127
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move/from16 v1, p1

    .local v1, "from":I
    move/from16 v2, p2

    .local v2, "to":I
    move-object v7, v0

    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-direct {v7, v8, v9}, Ljavafx/collections/ListChangeBuilder;->findSubChange(ILjava/util/List;)I

    move-result v7

    move v3, v7

    .line 128
    .local v3, "idx":I
    move v7, v2

    move v8, v1

    sub-int/2addr v7, v8

    move v4, v7

    .line 130
    .local v4, "numberOfAdded":I
    move v7, v3

    if-gez v7, :cond_1

    .line 131
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 134
    move v7, v3

    if-lez v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v5, v8

    .local v5, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v8, v1

    if-ne v7, v8, :cond_0

    .line 135
    move-object v7, v5

    move v8, v2

    iput v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 136
    add-int/lit8 v3, v3, -0x1

    .line 145
    .end local v5    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :goto_0
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 146
    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v6, v7

    .line 147
    .local v6, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v7, v6

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    .line 148
    move-object v7, v6

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    .end local v5    # "i":I
    .end local v6    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v8, v3

    new-instance v9, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move v11, v1

    move v12, v2

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v14, Ljavafx/collections/ListChangeBuilder;->EMPTY_PERM:[I

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Ljavafx/collections/ListChangeBuilder$SubChange;-><init>(IILjava/util/List;[IZ)V

    invoke-interface {v7, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v5, v7

    .line 142
    .local v5, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v7, v5

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    goto :goto_0

    .line 150
    .local v5, "i":I
    :cond_2
    return-void
.end method

.method private insertRemoved(ILjava/lang/Object;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 95
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move/from16 v1, p1

    .local v1, "pos":I
    move-object/from16 v2, p2

    .local v2, "removed":Ljava/lang/Object;, "TE;"
    move-object v6, v0

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-direct {v6, v7, v8}, Ljavafx/collections/ListChangeBuilder;->findSubChange(ILjava/util/List;)I

    move-result v6

    move v3, v6

    .line 96
    .local v3, "idx":I
    move v6, v3

    if-gez v6, :cond_3

    .line 97
    move v6, v3

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    move v3, v6

    .line 100
    move v6, v3

    if-lez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v4, v7

    .local v4, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    iget v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 101
    move-object v6, v4

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 102
    add-int/lit8 v3, v3, -0x1

    .line 119
    .end local v4    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_0
    :goto_0
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 120
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v5, v6

    .line 121
    .local v5, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v6, v5

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    .line 122
    move-object v6, v5

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    .end local v4    # "i":I
    .end local v5    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_1
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v4, v7

    .local v4, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    iget v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_2

    .line 104
    move-object v6, v4

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    .line 105
    move-object v6, v4

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 106
    move-object v6, v4

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    const/4 v7, 0x0

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 108
    .end local v4    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 109
    .local v5, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 110
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v7, v3

    new-instance v8, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v1

    move v11, v1

    move-object v12, v5

    sget-object v13, Ljavafx/collections/ListChangeBuilder;->EMPTY_PERM:[I

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Ljavafx/collections/ListChangeBuilder$SubChange;-><init>(IILjava/util/List;[IZ)V

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 111
    goto/16 :goto_0

    .line 113
    .end local v5    # "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v4, v6

    .line 114
    .restart local v4    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v6, v4

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 115
    move-object v6, v4

    iget v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move-object v7, v4

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    if-ne v6, v7, :cond_0

    move-object v6, v4

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    if-eqz v6, :cond_4

    move-object v6, v4

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0

    .line 124
    .local v4, "i":I
    :cond_5
    return-void
.end method

.method private insertUpdate(I)V
    .locals 14

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move v1, p1

    .local v1, "pos":I
    move-object v4, v0

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-direct {v4, v5, v6}, Ljavafx/collections/ListChangeBuilder;->findSubChange(ILjava/util/List;)I

    move-result v4

    move v2, v4

    .line 81
    .local v2, "idx":I
    move v4, v2

    if-gez v4, :cond_0

    .line 82
    move v4, v2

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    move v2, v4

    .line 84
    move v4, v2

    if-lez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v3, v5

    .local v3, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    iget v4, v4, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v5, v1

    if-ne v4, v5, :cond_1

    .line 85
    move-object v4, v3

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 92
    .end local v3    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v3, v5

    .restart local v3    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    iget v4, v4, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_2

    .line 87
    move-object v4, v3

    move v5, v1

    iput v5, v4, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    goto :goto_0

    .line 89
    .end local v3    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v5, v2

    new-instance v6, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move v8, v1

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    sget-object v11, Ljavafx/collections/ListChangeBuilder;->EMPTY_PERM:[I

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Ljavafx/collections/ListChangeBuilder$SubChange;-><init>(IILjava/util/List;[IZ)V

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public beginChange()V
    .locals 5

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljavafx/collections/ListChangeBuilder;->changeLock:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljavafx/collections/ListChangeBuilder;->changeLock:I

    .line 534
    return-void
.end method

.method public endChange()V
    .locals 5

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/collections/ListChangeBuilder;->changeLock:I

    if-gtz v1, :cond_0

    .line 538
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Called endChange before beginChange"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljavafx/collections/ListChangeBuilder;->changeLock:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ljavafx/collections/ListChangeBuilder;->changeLock:I

    .line 541
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder;->commit()V

    .line 542
    return-void
.end method

.method public nextAdd(II)V
    .locals 17

    .prologue
    .line 243
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move/from16 v1, p1

    .local v1, "from":I
    move/from16 v2, p2

    .local v2, "to":I
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/collections/ListChangeBuilder;->checkState()V

    .line 244
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/collections/ListChangeBuilder;->checkAddRemoveList()V

    .line 245
    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    .line 246
    :goto_0
    move-object v3, v7

    .line 247
    .local v3, "last":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move v7, v2

    move v8, v1

    sub-int/2addr v7, v8

    move v4, v7

    .line 249
    .local v4, "numberOfAdded":I
    move-object v7, v3

    if-eqz v7, :cond_1

    move-object v7, v3

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v8, v1

    if-ne v7, v8, :cond_1

    .line 250
    move-object v7, v3

    move v8, v2

    iput v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 257
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 258
    move-object v7, v0

    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-direct {v7, v8, v9}, Ljavafx/collections/ListChangeBuilder;->findSubChange(ILjava/util/List;)I

    move-result v7

    move v5, v7

    .line 259
    .local v5, "uPos":I
    move v7, v5

    if-gez v7, :cond_3

    .line 260
    move v7, v5

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v5, v7

    .line 268
    :goto_2
    move v7, v5

    move v6, v7

    .local v6, "i":I
    :goto_3
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 269
    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    .line 270
    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 268
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 245
    .end local v3    # "last":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    .end local v4    # "numberOfAdded":I
    .end local v5    # "uPos":I
    .end local v6    # "i":I
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    .line 246
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ListChangeBuilder$SubChange;

    goto :goto_0

    .line 251
    .restart local v3    # "last":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    .restart local v4    # "numberOfAdded":I
    :cond_1
    move-object v7, v3

    if-eqz v7, :cond_2

    move v7, v1

    move-object v8, v3

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    if-lt v7, v8, :cond_2

    move v7, v1

    move-object v8, v3

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    if-ge v7, v8, :cond_2

    .line 252
    move-object v7, v3

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    iget v8, v8, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    goto/16 :goto_1

    .line 254
    :cond_2
    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Ljavafx/collections/ListChangeBuilder;->insertAdd(II)V

    goto/16 :goto_1

    .line 263
    .restart local v5    # "uPos":I
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v6, v7

    .line 264
    .local v6, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    new-instance v9, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move v11, v2

    move-object v12, v6

    iget v12, v12, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v13, v2

    add-int/2addr v12, v13

    move v13, v1

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    sget-object v14, Ljavafx/collections/ListChangeBuilder;->EMPTY_PERM:[I

    const/4 v15, 0x1

    invoke-direct/range {v10 .. v15}, Ljavafx/collections/ListChangeBuilder$SubChange;-><init>(IILjava/util/List;[IZ)V

    invoke-interface {v7, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 265
    move-object v7, v6

    move v8, v1

    iput v8, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 266
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_2

    .line 274
    .end local v5    # "uPos":I
    .end local v6    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_4
    return-void
.end method

.method public nextPermutation(II[I)V
    .locals 29

    .prologue
    .line 277
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move/from16 v3, p1

    .local v3, "from":I
    move/from16 v4, p2

    .local v4, "to":I
    move-object/from16 v5, p3

    .local v5, "perm":[I
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Ljavafx/collections/ListChangeBuilder;->checkState()V

    .line 279
    move/from16 v19, v3

    move/from16 v6, v19

    .line 280
    .local v6, "prePermFrom":I
    move/from16 v19, v4

    move/from16 v7, v19

    .line 281
    .local v7, "prePermTo":I
    move-object/from16 v19, v5

    move-object/from16 v8, v19

    .line 283
    .local v8, "prePerm":[I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_f

    .line 294
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/collections/ObservableListBase;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 296
    .local v9, "mapToOriginal":[I
    new-instance v19, Ljava/util/TreeSet;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    invoke-direct/range {v20 .. v20}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v10, v19

    .line 297
    .local v10, "removed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 298
    .local v11, "last":I
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 299
    .local v12, "offset":I
    const/16 v19, 0x0

    move/from16 v13, v19

    .local v13, "i":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v14, v19

    .local v14, "sz":I
    :goto_0
    move/from16 v19, v13

    move/from16 v20, v14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 300
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    move/from16 v20, v13

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v15, v19

    .line 301
    .local v15, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move/from16 v19, v11

    move/from16 v16, v19

    .local v16, "j":I
    :goto_1
    move/from16 v19, v16

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 302
    move-object/from16 v19, v9

    move/from16 v20, v16

    move/from16 v21, v3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    move/from16 v20, v16

    move/from16 v21, v4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    :cond_0
    move/from16 v20, v16

    :goto_2
    move/from16 v21, v16

    move/from16 v22, v12

    add-int v21, v21, v22

    aput v21, v19, v20

    .line 301
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 302
    :cond_1
    move-object/from16 v20, v5

    move/from16 v21, v16

    move/from16 v22, v3

    sub-int v21, v21, v22

    aget v20, v20, v21

    goto :goto_2

    .line 304
    :cond_2
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v19, v0

    move/from16 v16, v19

    :goto_3
    move/from16 v19, v16

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 305
    move-object/from16 v19, v9

    move/from16 v20, v16

    move/from16 v21, v3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    move/from16 v20, v16

    move/from16 v21, v4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    :cond_3
    move/from16 v20, v16

    :goto_4
    const/16 v21, -0x1

    aput v21, v19, v20

    .line 304
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 305
    :cond_4
    move-object/from16 v20, v5

    move/from16 v21, v16

    move/from16 v22, v3

    sub-int v21, v21, v22

    aget v20, v20, v21

    goto :goto_4

    .line 307
    :cond_5
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move/from16 v19, v0

    move/from16 v11, v19

    .line 308
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    :goto_5
    move/from16 v16, v19

    .line 309
    .local v16, "removedSize":I
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v19, v0

    move/from16 v20, v12

    add-int v19, v19, v20

    move/from16 v17, v19

    .local v17, "j":I
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v19, v0

    move/from16 v20, v12

    add-int v19, v19, v20

    move/from16 v20, v16

    add-int v19, v19, v20

    move/from16 v18, v19

    .line 310
    .local v18, "upTo":I
    :goto_6
    move/from16 v19, v17

    move/from16 v20, v18

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 311
    move-object/from16 v19, v10

    move/from16 v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 310
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 308
    .end local v17    # "j":I
    .end local v18    # "upTo":I
    .local v16, "j":I
    :cond_6
    const/16 v19, 0x0

    goto :goto_5

    .line 313
    .local v16, "removedSize":I
    .restart local v17    # "j":I
    .restart local v18    # "upTo":I
    :cond_7
    move/from16 v19, v12

    move/from16 v20, v16

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move/from16 v21, v0

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v12, v19

    .line 299
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 317
    .end local v15    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    .end local v16    # "removedSize":I
    .end local v17    # "j":I
    .end local v18    # "upTo":I
    :cond_8
    move/from16 v19, v11

    move/from16 v13, v19

    :goto_7
    move/from16 v19, v13

    move-object/from16 v20, v9

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 318
    move-object/from16 v19, v9

    move/from16 v20, v13

    move/from16 v21, v3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    move/from16 v20, v13

    move/from16 v21, v4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    :cond_9
    move/from16 v20, v13

    :goto_8
    move/from16 v21, v13

    move/from16 v22, v12

    add-int v21, v21, v22

    aput v21, v19, v20

    .line 317
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 318
    :cond_a
    move-object/from16 v20, v5

    move/from16 v21, v13

    move/from16 v22, v3

    sub-int v21, v21, v22

    aget v20, v20, v21

    goto :goto_8

    .line 321
    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->list:Ljavafx/collections/ObservableListBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/collections/ObservableListBase;->size()I

    move-result v19

    move/from16 v20, v12

    add-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 322
    .local v13, "newPerm":[I
    const/16 v19, 0x0

    move/from16 v14, v19

    .line 323
    .local v14, "mapPtr":I
    const/16 v19, 0x0

    move/from16 v15, v19

    .local v15, "i":I
    :goto_9
    move/from16 v19, v15

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 324
    move-object/from16 v19, v10

    move/from16 v20, v15

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 325
    move-object/from16 v19, v13

    move/from16 v20, v15

    move/from16 v21, v15

    aput v21, v19, v20

    .line 323
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 327
    :cond_c
    :goto_b
    move-object/from16 v19, v9

    move/from16 v20, v14

    aget v19, v19, v20

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 328
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 330
    :cond_d
    move-object/from16 v19, v13

    move-object/from16 v20, v9

    move/from16 v21, v14

    add-int/lit8 v14, v14, 0x1

    aget v20, v20, v21

    move/from16 v21, v15

    aput v21, v19, v20

    goto :goto_a

    .line 336
    :cond_e
    const/16 v19, 0x0

    move/from16 v6, v19

    .line 337
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v7, v19

    .line 338
    move-object/from16 v19, v13

    move-object/from16 v8, v19

    .line 343
    .end local v9    # "mapToOriginal":[I
    .end local v10    # "removed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v11    # "last":I
    .end local v12    # "offset":I
    .end local v13    # "newPerm":[I
    .end local v14    # "mapPtr":I
    .end local v15    # "i":I
    :cond_f
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    .line 344
    move/from16 v19, v6

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    move/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 345
    const/16 v19, 0x0

    move/from16 v9, v19

    .local v9, "i":I
    :goto_c
    move/from16 v19, v9

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 346
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    move-object/from16 v19, v0

    move/from16 v20, v9

    move-object/from16 v21, v8

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    move-object/from16 v22, v0

    move/from16 v23, v9

    aget v22, v22, v23

    move/from16 v23, v6

    sub-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 345
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 374
    .end local v9    # "i":I
    :cond_10
    :goto_d
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_25

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_25

    .line 375
    new-instance v19, Ljava/util/TreeSet;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    invoke-direct/range {v20 .. v20}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v9, v19

    .line 376
    .local v9, "newAdded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/HashMap;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v10, v19

    .line 377
    .local v10, "newRemoved":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<TE;>;>;"
    const/16 v19, 0x0

    move/from16 v11, v19

    .local v11, "i":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v12, v19

    .local v12, "sz":I
    :goto_e
    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1e

    .line 378
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    move/from16 v20, v11

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v13, v19

    .line 379
    .local v13, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v19, v0

    move/from16 v14, v19

    .local v14, "cIndex":I
    :goto_f
    move/from16 v19, v14

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    .line 380
    move/from16 v19, v14

    move/from16 v20, v3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_11

    move/from16 v19, v14

    move/from16 v20, v4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_19

    .line 381
    :cond_11
    move-object/from16 v19, v9

    move/from16 v20, v14

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 379
    :goto_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 349
    .end local v9    # "newAdded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "newRemoved":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<TE;>;>;"
    .end local v11    # "i":I
    .end local v12    # "sz":I
    .end local v13    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    .end local v14    # "cIndex":I
    :cond_12
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move/from16 v19, v0

    move/from16 v20, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v9, v19

    .line 350
    .local v9, "newTo":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v19, v0

    move/from16 v20, v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v10, v19

    .line 351
    .local v10, "newFrom":I
    move/from16 v19, v9

    move/from16 v20, v10

    sub-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v11, v19

    .line 353
    .local v11, "newPerm":[I
    move/from16 v19, v10

    move/from16 v12, v19

    .local v12, "i":I
    :goto_11
    move/from16 v19, v12

    move/from16 v20, v9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 354
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_13

    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_14

    .line 355
    :cond_13
    move-object/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v10

    sub-int v20, v20, v21

    move-object/from16 v21, v8

    move/from16 v22, v12

    move/from16 v23, v6

    sub-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 353
    :goto_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 357
    :cond_14
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    move-object/from16 v19, v0

    move/from16 v20, v12

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    aget v19, v19, v20

    move/from16 v13, v19

    .line 358
    .local v13, "p":I
    move/from16 v19, v13

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_15

    move/from16 v19, v13

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_16

    .line 359
    :cond_15
    move-object/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v10

    sub-int v20, v20, v21

    move/from16 v21, v13

    aput v21, v19, v20

    goto :goto_12

    .line 361
    :cond_16
    move-object/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v10

    sub-int v20, v20, v21

    move-object/from16 v21, v8

    move/from16 v22, v13

    move/from16 v23, v6

    sub-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    goto :goto_12

    .line 366
    .end local v13    # "p":I
    :cond_17
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v19, v0

    move/from16 v20, v10

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    .line 367
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v19, v0

    move/from16 v20, v9

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 368
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    .line 369
    goto/16 :goto_d

    .line 371
    .end local v9    # "newTo":I
    .end local v10    # "newFrom":I
    .end local v11    # "newPerm":[I
    .end local v12    # "i":I
    :cond_18
    move-object/from16 v19, v2

    new-instance v20, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move/from16 v22, v6

    move/from16 v23, v7

    const/16 v24, 0x0

    move-object/from16 v25, v8

    const/16 v26, 0x0

    invoke-direct/range {v21 .. v26}, Ljavafx/collections/ListChangeBuilder$SubChange;-><init>(IILjava/util/List;[IZ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/collections/ListChangeBuilder;->permutationChange:Ljavafx/collections/ListChangeBuilder$SubChange;

    goto/16 :goto_d

    .line 383
    .local v9, "newAdded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v10, "newRemoved":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<TE;>;>;"
    .local v11, "i":I
    .local v12, "sz":I
    .local v13, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    .restart local v14    # "cIndex":I
    :cond_19
    move-object/from16 v19, v9

    move-object/from16 v20, v5

    move/from16 v21, v14

    move/from16 v22, v3

    sub-int v21, v21, v22

    aget v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v19

    goto/16 :goto_10

    .line 386
    :cond_1a
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 387
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v19, v0

    move/from16 v20, v3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1b

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1d

    .line 388
    :cond_1b
    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 377
    :cond_1c
    :goto_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_e

    .line 390
    :cond_1d
    move-object/from16 v19, v10

    move-object/from16 v20, v5

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v21, v0

    move/from16 v22, v3

    sub-int v21, v21, v22

    aget v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto :goto_13

    .line 394
    .end local v13    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    .end local v14    # "cIndex":I
    :cond_1e
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 395
    const/16 v19, 0x0

    move-object/from16 v11, v19

    .line 396
    .local v11, "lastChange":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v12, v19

    .end local v12    # "sz":I
    :goto_14
    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_23

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move-object/from16 v13, v19

    .line 397
    .local v13, "i":Ljava/lang/Integer;
    move-object/from16 v19, v11

    if-eqz v19, :cond_1f

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move/from16 v19, v0

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_21

    .line 398
    :cond_1f
    new-instance v19, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x0

    sget-object v24, Ljavafx/collections/ListChangeBuilder;->EMPTY_PERM:[I

    const/16 v25, 0x0

    invoke-direct/range {v20 .. v25}, Ljavafx/collections/ListChangeBuilder$SubChange;-><init>(IILjava/util/List;[IZ)V

    move-object/from16 v11, v19

    .line 399
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 403
    :goto_15
    move-object/from16 v19, v10

    move-object/from16 v20, v13

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v14, v19

    .line 404
    .local v14, "removed":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object/from16 v19, v14

    if-eqz v19, :cond_20

    .line 405
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_22

    .line 406
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v20, v14

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v19

    .line 411
    :cond_20
    :goto_16
    goto/16 :goto_14

    .line 401
    .end local v14    # "removed":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_21
    move-object/from16 v19, v11

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    goto :goto_15

    .line 408
    .restart local v14    # "removed":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_22
    move-object/from16 v19, v11

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    goto :goto_16

    .line 413
    .end local v13    # "i":Ljava/lang/Integer;
    .end local v14    # "removed":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_23
    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v12, v19

    :goto_17
    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_25

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    move-object/from16 v13, v19

    .line 414
    .local v13, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<TE;>;>;"
    move-object/from16 v19, v13

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move-object/from16 v14, v19

    .line 415
    .local v14, "at":Ljava/lang/Integer;
    move-object/from16 v19, v2

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Ljavafx/collections/ListChangeBuilder;->findSubChange(ILjava/util/List;)I

    move-result v19

    move/from16 v15, v19

    .line 416
    .local v15, "idx":I
    sget-boolean v19, Ljavafx/collections/ListChangeBuilder;->$assertionsDisabled:Z

    if-nez v19, :cond_24

    move/from16 v19, v15

    if-ltz v19, :cond_24

    new-instance v19, Ljava/lang/AssertionError;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 417
    :cond_24
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object/from16 v19, v0

    move/from16 v20, v15

    const/16 v21, -0x1

    xor-int/lit8 v20, v20, -0x1

    new-instance v21, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v25, v13

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-direct/range {v22 .. v27}, Ljavafx/collections/ListChangeBuilder$SubChange;-><init>(IILjava/util/List;[IZ)V

    invoke-interface/range {v19 .. v21}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 418
    goto :goto_17

    .line 421
    .end local v9    # "newAdded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "newRemoved":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<TE;>;>;"
    .end local v11    # "lastChange":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<TE;>;>;"
    .end local v14    # "at":Ljava/lang/Integer;
    .end local v15    # "idx":I
    :cond_25
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2c

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2c

    .line 422
    new-instance v19, Ljava/util/TreeSet;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    invoke-direct/range {v20 .. v20}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v9, v19

    .line 423
    .local v9, "newUpdated":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    move/from16 v10, v19

    .local v10, "i":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v11, v19

    .local v11, "sz":I
    :goto_18
    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_29

    .line 424
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move-object/from16 v19, v0

    move/from16 v20, v10

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v12, v19

    .line 425
    .local v12, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move/from16 v19, v0

    move/from16 v13, v19

    .local v13, "cIndex":I
    :goto_19
    move/from16 v19, v13

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_28

    .line 426
    move/from16 v19, v13

    move/from16 v20, v3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_26

    move/from16 v19, v13

    move/from16 v20, v4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_27

    .line 427
    :cond_26
    move-object/from16 v19, v9

    move/from16 v20, v13

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 425
    :goto_1a
    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    .line 429
    :cond_27
    move-object/from16 v19, v9

    move-object/from16 v20, v5

    move/from16 v21, v13

    move/from16 v22, v3

    sub-int v21, v21, v22

    aget v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v19

    goto :goto_1a

    .line 423
    :cond_28
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 433
    .end local v12    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    .end local v13    # "cIndex":I
    :cond_29
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 434
    const/16 v19, 0x0

    move-object/from16 v10, v19

    .line 435
    .local v10, "lastUpdateChange":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v11, v19

    .end local v11    # "sz":I
    :goto_1b
    move-object/from16 v19, v11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2c

    move-object/from16 v19, v11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move-object/from16 v12, v19

    .line 436
    .local v12, "i":Ljava/lang/Integer;
    move-object/from16 v19, v10

    if-eqz v19, :cond_2a

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move/from16 v19, v0

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2b

    .line 437
    :cond_2a
    new-instance v19, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x0

    sget-object v24, Ljavafx/collections/ListChangeBuilder;->EMPTY_PERM:[I

    const/16 v25, 0x1

    invoke-direct/range {v20 .. v25}, Ljavafx/collections/ListChangeBuilder$SubChange;-><init>(IILjava/util/List;[IZ)V

    move-object/from16 v10, v19

    .line 438
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v20, v10

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 442
    :goto_1c
    goto :goto_1b

    .line 440
    :cond_2b
    move-object/from16 v19, v10

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    goto :goto_1c

    .line 444
    .end local v9    # "newUpdated":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "lastUpdateChange":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    .end local v12    # "i":Ljava/lang/Integer;
    :cond_2c
    return-void
.end method

.method public nextRemove(ILjava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move v1, p1

    .local v1, "idx":I
    move-object v2, p2

    .local v2, "removed":Ljava/lang/Object;, "TE;"
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/collections/ListChangeBuilder;->checkState()V

    .line 198
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/collections/ListChangeBuilder;->checkAddRemoveList()V

    .line 200
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    .line 201
    :goto_0
    move-object v3, v6

    .line 203
    .local v3, "last":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v3

    iget v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 204
    move-object v6, v3

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 213
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 214
    move-object v6, v0

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-direct {v6, v7, v8}, Ljavafx/collections/ListChangeBuilder;->findSubChange(ILjava/util/List;)I

    move-result v6

    move v4, v6

    .line 215
    .local v4, "uPos":I
    move v6, v4

    if-gez v6, :cond_3

    .line 216
    move v6, v4

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 226
    :goto_2
    move v6, v4

    move v5, v6

    .local v5, "i":I
    :goto_3
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 227
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    .line 228
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 200
    .end local v3    # "last":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    .end local v4    # "uPos":I
    .end local v5    # "i":I
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder;->addRemoveChanges:Ljava/util/List;

    .line 201
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ListChangeBuilder$SubChange;

    goto :goto_0

    .line 205
    .restart local v3    # "last":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_1
    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v3

    iget v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_2

    .line 206
    move-object v6, v3

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    .line 207
    move-object v6, v3

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 208
    move-object v6, v3

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    const/4 v7, 0x0

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 210
    :cond_2
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljavafx/collections/ListChangeBuilder;->insertRemoved(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 218
    .restart local v4    # "uPos":I
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v5, v6

    .line 219
    .local v5, "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v6, v5

    iget v6, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move-object v7, v5

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 220
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_2

    .line 222
    :cond_4
    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 232
    .end local v4    # "uPos":I
    .end local v5    # "change":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_5
    return-void
.end method

.method public nextRemove(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move v1, p1

    .local v1, "idx":I
    move-object v2, p2

    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/collections/ListChangeBuilder;->checkState()V

    .line 237
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 238
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/collections/ListChangeBuilder;->nextRemove(ILjava/lang/Object;)V

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method public nextReplace(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, p3

    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/collections/ListChangeBuilder;->nextRemove(ILjava/util/List;)V

    .line 449
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/collections/ListChangeBuilder;->nextAdd(II)V

    .line 450
    return-void
.end method

.method public nextSet(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move v1, p1

    .local v1, "idx":I
    move-object v2, p2

    .local v2, "old":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/ListChangeBuilder;->nextRemove(ILjava/lang/Object;)V

    .line 454
    move-object v3, v0

    move v4, v1

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/ListChangeBuilder;->nextAdd(II)V

    .line 456
    return-void
.end method

.method public nextUpdate(I)V
    .locals 7

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder;, "Ljavafx/collections/ListChangeBuilder<TE;>;"
    move v1, p1

    .local v1, "idx":I
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/collections/ListChangeBuilder;->checkState()V

    .line 460
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    if-nez v3, :cond_0

    .line 461
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    .line 463
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 464
    .local v2, "last":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    iget v3, v3, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v4, v1

    if-ne v3, v4, :cond_2

    .line 465
    move-object v3, v2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    .line 469
    :goto_1
    return-void

    .line 463
    .end local v2    # "last":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ListChangeBuilder;->updateChanges:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ListChangeBuilder$SubChange;

    goto :goto_0

    .line 467
    .restart local v2    # "last":Ljavafx/collections/ListChangeBuilder$SubChange;, "Ljavafx/collections/ListChangeBuilder$SubChange<TE;>;"
    :cond_2
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Ljavafx/collections/ListChangeBuilder;->insertUpdate(I)V

    goto :goto_1
.end method
