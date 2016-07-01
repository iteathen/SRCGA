.class Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;
.super Ljava/lang/Object;
.source "VirtualFlow.java"

# interfaces
.implements Lcom/sun/javafx/scene/traversal/Algorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/VirtualFlow;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V
    .locals 4

    .prologue
    .line 787
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findOwnerCell(Ljavafx/scene/Node;)Ljavafx/scene/control/IndexedCell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    move-object v1, p1

    .local v1, "owner":Ljavafx/scene/Node;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    .line 849
    .local v2, "p":Ljavafx/scene/Parent;
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 850
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 852
    :cond_0
    move-object v3, v2

    check-cast v3, Ljavafx/scene/control/IndexedCell;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    return-object v0
.end method


# virtual methods
.method public select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 11

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    move-object v1, p1

    .local v1, "owner":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, p3

    .local v3, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 844
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    :goto_0
    return-object v0

    .line 821
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 822
    move-object v7, v1

    check-cast v7, Ljavafx/scene/control/IndexedCell;

    move-object v4, v7

    .line 831
    .local v4, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_1
    :goto_1
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v7

    move v5, v7

    .line 832
    .local v5, "cellIndex":I
    sget-object v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow$5;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 844
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 824
    .end local v4    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .end local v5    # "cellIndex":I
    :cond_2
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->findOwnerCell(Ljavafx/scene/Node;)Ljavafx/scene/control/IndexedCell;

    move-result-object v7

    move-object v4, v7

    .line 825
    .restart local v4    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v7, v3

    move-object v8, v4

    move-object v9, v1

    move-object v10, v2

    invoke-interface {v7, v8, v9, v10}, Lcom/sun/javafx/scene/traversal/TraversalContext;->selectInSubtree(Ljavafx/scene/Parent;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v5, v7

    .line 826
    .local v5, "next":Ljavafx/scene/Node;
    move-object v7, v5

    if-eqz v7, :cond_3

    .line 827
    move-object v7, v5

    move-object v0, v7

    goto :goto_0

    .line 829
    :cond_3
    move-object v7, v2

    sget-object v8, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v7, v8, :cond_1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->NEXT_IN_LINE:Lcom/sun/javafx/scene/traversal/Direction;

    move-object v2, v7

    goto :goto_1

    .line 834
    .local v5, "cellIndex":I
    :pswitch_0
    move-object v7, v0

    move v8, v5

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->selectPreviousBeforeIndex(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 836
    :pswitch_1
    move-object v7, v3

    move-object v8, v4

    invoke-interface {v7, v8}, Lcom/sun/javafx/scene/traversal/TraversalContext;->selectFirstInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v6, v7

    .line 837
    .local v6, "n":Ljavafx/scene/Node;
    move-object v7, v6

    if-eqz v7, :cond_4

    .line 838
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 842
    .end local v6    # "n":Ljavafx/scene/Node;
    :cond_4
    :pswitch_2
    move-object v7, v0

    move v8, v5

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->selectNextAfterIndex(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public selectFirst(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 857
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/IndexedCell;

    move-object v2, v4

    .line 858
    .local v2, "firstCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 864
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    :goto_0
    return-object v0

    .line 859
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/IndexedCell;->isFocusTraversable()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 860
    :cond_1
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/javafx/scene/traversal/TraversalContext;->selectFirstInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v4

    move-object v3, v4

    .line 861
    .local v3, "n":Ljavafx/scene/Node;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 862
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 864
    :cond_2
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->selectNextAfterIndex(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public selectLast(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/IndexedCell;

    move-object v2, v4

    .line 870
    .local v2, "lastCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 876
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    :goto_0
    return-object v0

    .line 871
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/javafx/scene/traversal/TraversalContext;->selectLastInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v4

    move-object v3, v4

    .line 872
    .local v3, "p":Ljavafx/scene/Node;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 873
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 875
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/IndexedCell;->isFocusTraversable()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 876
    :cond_2
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->selectPreviousBeforeIndex(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method selectNextAfterIndex(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 8

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    add-int/lit8 v1, v1, 0x1

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVisibleCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    .local v3, "nextCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    if-eqz v5, :cond_2

    .line 792
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/IndexedCell;->isFocusTraversable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 793
    move-object v5, v3

    move-object v0, v5

    .line 800
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    :goto_1
    return-object v0

    .line 795
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    :cond_0
    move-object v5, v2

    move-object v6, v3

    invoke-interface {v5, v6}, Lcom/sun/javafx/scene/traversal/TraversalContext;->selectFirstInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 796
    .local v4, "n":Ljavafx/scene/Node;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 797
    move-object v5, v4

    move-object v0, v5

    goto :goto_1

    .line 799
    :cond_1
    goto :goto_0

    .line 800
    .end local v4    # "n":Ljavafx/scene/Node;
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method selectPreviousBeforeIndex(ILcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 8

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;->this$0:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVisibleCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    .local v3, "prevCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    if-eqz v5, :cond_2

    .line 806
    move-object v5, v2

    move-object v6, v3

    invoke-interface {v5, v6}, Lcom/sun/javafx/scene/traversal/TraversalContext;->selectLastInParent(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 807
    .local v4, "prev":Ljavafx/scene/Node;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 808
    move-object v5, v4

    move-object v0, v5

    .line 814
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    .end local v4    # "prev":Ljavafx/scene/Node;
    :goto_1
    return-object v0

    .line 810
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;"
    .restart local v4    # "prev":Ljavafx/scene/Node;
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/IndexedCell;->isFocusTraversable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 811
    move-object v5, v3

    move-object v0, v5

    goto :goto_1

    .line 813
    :cond_1
    goto :goto_0

    .line 814
    .end local v4    # "prev":Ljavafx/scene/Node;
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method
