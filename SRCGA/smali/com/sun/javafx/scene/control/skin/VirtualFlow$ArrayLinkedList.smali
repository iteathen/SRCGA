.class public Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;
.super Ljava/util/AbstractList;
.source "VirtualFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/VirtualFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayLinkedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private firstIndex:I

.field private lastIndex:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 2732
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractList;-><init>()V

    .line 2729
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    .line 2730
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    .line 2733
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    .line 2735
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    const/16 v3, 0x32

    if-ge v2, v3, :cond_0

    .line 2736
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2735
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2738
    :cond_0
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2751
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2752
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    .line 2753
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2764
    :goto_0
    return-void

    .line 2754
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    if-nez v2, :cond_1

    .line 2757
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2758
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    goto :goto_0

    .line 2762
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2769
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2770
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    .line 2771
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2779
    :goto_0
    return-void

    .line 2772
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2775
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2777
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public clear()V
    .locals 8

    .prologue
    .line 2800
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2801
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2800
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2804
    :cond_0
    move-object v2, v0

    move-object v3, v0

    const/4 v4, -0x1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    .line 2805
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 2790
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    move v2, v1

    if-gez v2, :cond_1

    .line 2793
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 2796
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    move v4, v1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2741
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2745
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 2786
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 2818
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move v1, p1

    .local v1, "index":I
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_0

    move v4, v1

    if-gez v4, :cond_1

    .line 2819
    :cond_0
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2826
    :cond_1
    move v4, v1

    if-nez v4, :cond_3

    .line 2827
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 2828
    .local v2, "cell":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2829
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    if-ne v4, v5, :cond_2

    .line 2830
    move-object v4, v0

    move-object v5, v0

    const/4 v6, -0x1

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    iput v7, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    .line 2834
    :goto_0
    move-object v4, v2

    move-object v0, v4

    .line 2851
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :goto_1
    return-object v0

    .line 2832
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :cond_2
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    goto :goto_0

    .line 2835
    .end local v2    # "cell":Ljava/lang/Object;, "TT;"
    :cond_3
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_4

    .line 2839
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 2840
    .restart local v2    # "cell":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2841
    move-object v4, v2

    move-object v0, v4

    goto :goto_1

    .line 2845
    .end local v2    # "cell":Ljava/lang/Object;, "TT;"
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    move v6, v1

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 2846
    .restart local v2    # "cell":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    move v6, v1

    add-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2847
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    move v5, v1

    add-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .local v3, "i":I
    :goto_2
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    if-gt v4, v5, :cond_5

    .line 2848
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2847
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2850
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->array:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2851
    move-object v4, v2

    move-object v0, v4

    goto/16 :goto_1
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2808
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 2809
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2813
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 2814
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 2782
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList<TT;>;"
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->lastIndex:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->firstIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
