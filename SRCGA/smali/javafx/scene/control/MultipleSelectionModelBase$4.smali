.class Ljavafx/scene/control/MultipleSelectionModelBase$4;
.super Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
.source "MultipleSelectionModelBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/MultipleSelectionModelBase;->createListFromBitSet(Ljava/util/BitSet;)Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private lastGetIndex:I

.field private lastGetValue:I

.field final synthetic this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

.field final synthetic val$bitset:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Ljavafx/scene/control/MultipleSelectionModelBase;Ljava/util/BitSet;)V
    .locals 5

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/MultipleSelectionModelBase;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->val$bitset:Ljava/util/BitSet;

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;-><init>()V

    .line 750
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    .line 751
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 787
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_1

    .line 788
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    move-object v2, v4

    .line 789
    .local v2, "n":Ljava/lang/Number;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v3, v4

    .line 791
    .local v3, "index":I
    move v4, v3

    if-ltz v4, :cond_0

    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MultipleSelectionModelBase$4;->val$bitset:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$4;->val$bitset:Ljava/util/BitSet;

    move v5, v3

    .line 792
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 795
    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    .end local v2    # "n":Ljava/lang/Number;
    .end local v3    # "index":I
    :goto_1
    return v0

    .line 792
    .restart local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    .restart local v2    # "n":Ljava/lang/Number;
    .restart local v3    # "index":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 795
    .end local v2    # "n":Ljava/lang/Number;
    .end local v3    # "index":I
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 8

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    invoke-virtual {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->getItemCount()I

    move-result v3

    move v2, v3

    .line 755
    .local v2, "itemCount":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move v4, v2

    if-lt v3, v4, :cond_1

    :cond_0
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    .line 779
    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    :goto_0
    return-object v0

    .line 757
    .restart local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    :cond_1
    move v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    move v4, v2

    if-ge v3, v4, :cond_2

    .line 760
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    .line 761
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$4;->val$bitset:Ljava/util/BitSet;

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    iput v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    .line 762
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 763
    :cond_2
    move v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    if-lez v3, :cond_3

    .line 766
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    .line 767
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$4;->val$bitset:Ljava/util/BitSet;

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->previousSetBit(I)I

    move-result v4

    iput v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    .line 768
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 770
    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$4;->val$bitset:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    iput v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    .line 771
    :goto_1
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    if-gez v3, :cond_4

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    move v4, v1

    if-ne v3, v4, :cond_6

    .line 773
    :cond_4
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    move v4, v1

    if-ne v3, v4, :cond_5

    .line 774
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 772
    :cond_5
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetIndex:I

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$4;->val$bitset:Ljava/util/BitSet;

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    iput v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$4;->lastGetValue:I

    goto :goto_1

    .line 779
    :cond_6
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase$4;->get(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase$4;->val$bitset:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$4;, "Ljavafx/scene/control/MultipleSelectionModelBase$4;"
    return v0
.end method
