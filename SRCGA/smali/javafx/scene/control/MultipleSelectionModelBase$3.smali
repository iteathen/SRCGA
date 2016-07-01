.class final Ljavafx/scene/control/MultipleSelectionModelBase$3;
.super Ljavafx/collections/ListChangeListener$Change;
.source "MultipleSelectionModelBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/MultipleSelectionModelBase;->createRangeChange(Ljavafx/collections/ObservableList;Ljava/util/List;Z)Ljavafx/collections/ListChangeListener$Change;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/collections/ListChangeListener$Change",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final EMPTY_PERM:[I

.field private final addedSize:I

.field private from:I

.field private invalid:Z

.field private pos:I

.field private to:I

.field final synthetic val$addedItems:Ljava/util/List;

.field final synthetic val$list:Ljavafx/collections/ObservableList;

.field final synthetic val$splitChanges:Z


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableList;Ljava/util/List;Ljavafx/collections/ObservableList;Z)V
    .locals 7

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    move-object v1, p1

    .local v1, "x0":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Integer;>;"
    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->val$addedItems:Ljava/util/List;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->val$list:Ljavafx/collections/ObservableList;

    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->val$splitChanges:Z

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavafx/collections/ListChangeListener$Change;-><init>(Ljavafx/collections/ObservableList;)V

    .line 534
    move-object v5, v0

    const/4 v6, 0x0

    new-array v6, v6, [I

    iput-object v6, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->EMPTY_PERM:[I

    .line 535
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/MultipleSelectionModelBase$3;->val$addedItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->addedSize:I

    .line 537
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->invalid:Z

    .line 539
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    .line 540
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    iput v6, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->from:I

    .line 541
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    iput v6, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->to:I

    return-void
.end method

.method private checkState()V
    .locals 5

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase$3;->invalid:Z

    if-eqz v1, :cond_0

    .line 603
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid Change state: next() must be called before inspecting the Change."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 605
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddedSize()I
    .locals 3

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase$3;->to:I

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/MultipleSelectionModelBase$3;->from:I

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    return v0
.end method

.method public getFrom()I
    .locals 2

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MultipleSelectionModelBase$3;->checkState()V

    .line 545
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase$3;->from:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    return v0
.end method

.method protected getPermutation()[I
    .locals 2

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MultipleSelectionModelBase$3;->checkState()V

    .line 560
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase$3;->EMPTY_PERM:[I

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    return-object v0
.end method

.method public getRemoved()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MultipleSelectionModelBase$3;->checkState()V

    .line 555
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    return-object v0
.end method

.method public getTo()I
    .locals 2

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MultipleSelectionModelBase$3;->checkState()V

    .line 550
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase$3;->to:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    return v0
.end method

.method public next()Z
    .locals 11

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->addedSize:I

    if-lt v4, v5, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 591
    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    .local v1, "startValue":I
    .local v2, "endValue":I
    :goto_0
    return v0

    .line 572
    .end local v1    # "startValue":I
    .end local v2    # "endValue":I
    .restart local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->val$addedItems:Ljava/util/List;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v1, v4

    .line 573
    .restart local v1    # "startValue":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->val$list:Ljavafx/collections/ObservableList;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->from:I

    .line 574
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->from:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->to:I

    .line 575
    move v4, v1

    move v2, v4

    .line 576
    .restart local v2    # "endValue":I
    :goto_1
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->addedSize:I

    if-ge v4, v5, :cond_1

    .line 577
    move v4, v2

    move v3, v4

    .line 578
    .local v3, "previousEndValue":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->val$addedItems:Ljava/util/List;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v2, v4

    .line 579
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->to:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->to:I

    .line 580
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->val$splitChanges:Z

    if-eqz v4, :cond_2

    move v4, v3

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_2

    .line 581
    .line 585
    .end local v3    # "previousEndValue":I
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->invalid:Z

    if-eqz v4, :cond_3

    .line 586
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->invalid:Z

    .line 587
    const/4 v4, 0x1

    move v0, v4

    goto/16 :goto_0

    .line 583
    .restart local v3    # "previousEndValue":I
    :cond_2
    goto :goto_1

    .line 591
    .end local v3    # "previousEndValue":I
    :cond_3
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->val$splitChanges:Z

    if-eqz v4, :cond_4

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/MultipleSelectionModelBase$3;->addedSize:I

    if-ge v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$3;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/MultipleSelectionModelBase$3;->invalid:Z

    .line 596
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/control/MultipleSelectionModelBase$3;->pos:I

    .line 597
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/control/MultipleSelectionModelBase$3;->to:I

    .line 598
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/control/MultipleSelectionModelBase$3;->from:I

    .line 599
    return-void
.end method
