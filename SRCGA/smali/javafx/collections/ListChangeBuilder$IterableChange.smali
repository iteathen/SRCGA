.class Ljavafx/collections/ListChangeBuilder$IterableChange;
.super Ljavafx/collections/ListChangeListener$Change;
.source "ListChangeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/ListChangeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IterableChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/ListChangeListener$Change",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

.field private cursor:I


# direct methods
.method private constructor <init>([Ljavafx/collections/ListChangeBuilder$SubChange;Ljavafx/collections/ObservableList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/collections/ListChangeBuilder$SubChange;",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    move-object v1, p1

    .local v1, "changes":[Ljavafx/collections/ListChangeBuilder$SubChange;
    move-object v2, p2

    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/collections/ListChangeListener$Change;-><init>(Ljavafx/collections/ObservableList;)V

    .line 641
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    .line 645
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    .line 646
    return-void
.end method

.method synthetic constructor <init>([Ljavafx/collections/ListChangeBuilder$SubChange;Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeBuilder$1;)V
    .locals 7

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    move-object v1, p1

    .local v1, "x0":[Ljavafx/collections/ListChangeBuilder$SubChange;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/ObservableList;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/ListChangeBuilder$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/collections/ListChangeBuilder$IterableChange;-><init>([Ljavafx/collections/ListChangeBuilder$SubChange;Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method private checkState()V
    .locals 5

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 694
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid Change state: next() must be called before inspecting the Change."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :cond_0
    return-void
.end method


# virtual methods
.method public getFrom()I
    .locals 3

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder$IterableChange;->checkState()V

    .line 665
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v2, v0

    iget v2, v2, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    aget-object v1, v1, v2

    iget v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    return v0
.end method

.method protected getPermutation()[I
    .locals 3

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder$IterableChange;->checkState()V

    .line 683
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v2, v0

    iget v2, v2, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    aget-object v1, v1, v2

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    return-object v0
.end method

.method public getRemoved()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder$IterableChange;->checkState()V

    .line 677
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v2, v0

    iget v2, v2, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    aget-object v1, v1, v2

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    return-object v0
.end method

.method public getTo()I
    .locals 3

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder$IterableChange;->checkState()V

    .line 671
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v2, v0

    iget v2, v2, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    aget-object v1, v1, v2

    iget v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    return v0
.end method

.method public next()Z
    .locals 5

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    move-object v1, v0

    iget v1, v1, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 651
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    .line 652
    const/4 v1, 0x1

    move v0, v1

    .line 654
    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    .line 660
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    const/4 v3, 0x0

    move v1, v3

    .line 701
    .local v1, "c":I
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 702
    .local v2, "b":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "{ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 703
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 704
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    array-length v3, v3

    if-eqz v3, :cond_1

    .line 705
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move v5, v1

    aget-object v4, v4, v5

    iget-object v4, v4, Ljavafx/collections/ListChangeBuilder$SubChange;->perm:[I

    invoke-static {v4}, Lcom/sun/javafx/collections/ChangeHelper;->permChangeToString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 711
    :goto_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    .line 712
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 714
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move v4, v1

    aget-object v3, v3, v4

    iget-boolean v3, v3, Ljavafx/collections/ListChangeBuilder$SubChange;->updated:Z

    if-eqz v3, :cond_2

    .line 707
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move v5, v1

    aget-object v4, v4, v5

    iget v4, v4, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move v6, v1

    aget-object v5, v5, v6

    iget v5, v5, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    invoke-static {v4, v5}, Lcom/sun/javafx/collections/ChangeHelper;->updateChangeToString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_1

    .line 709
    :cond_2
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move v5, v1

    aget-object v4, v4, v5

    iget v4, v4, Ljavafx/collections/ListChangeBuilder$SubChange;->from:I

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move v6, v1

    aget-object v5, v5, v6

    iget v5, v5, Ljavafx/collections/ListChangeBuilder$SubChange;->to:I

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/collections/ListChangeBuilder$IterableChange;->getList()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move v8, v1

    aget-object v7, v7, v8

    iget-object v7, v7, Ljavafx/collections/ListChangeBuilder$SubChange;->removed:Ljava/util/List;

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ChangeHelper;->addRemoveChangeToString(IILjava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_1

    .line 716
    :cond_3
    move-object v3, v2

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 717
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    return-object v0
.end method

.method public wasUpdated()Z
    .locals 3

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ListChangeBuilder$IterableChange;->checkState()V

    .line 689
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeBuilder$IterableChange;->changes:[Ljavafx/collections/ListChangeBuilder$SubChange;

    move-object v2, v0

    iget v2, v2, Ljavafx/collections/ListChangeBuilder$IterableChange;->cursor:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Ljavafx/collections/ListChangeBuilder$SubChange;->updated:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeBuilder$IterableChange;, "Ljavafx/collections/ListChangeBuilder$IterableChange<TE;>;"
    return v0
.end method
