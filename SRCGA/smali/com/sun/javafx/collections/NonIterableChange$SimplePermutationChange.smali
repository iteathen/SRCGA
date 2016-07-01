.class public Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;
.super Lcom/sun/javafx/collections/NonIterableChange;
.source "NonIterableChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/NonIterableChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePermutationChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/collections/NonIterableChange",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final permutation:[I


# direct methods
.method public constructor <init>(II[ILjavafx/collections/ObservableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, p3

    .local v3, "permutation":[I
    move-object v4, p4

    .local v4, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/collections/NonIterableChange;-><init>(IILjavafx/collections/ObservableList;)V

    .line 166
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;->permutation:[I

    .line 167
    return-void
.end method


# virtual methods
.method protected getPermutation()[I
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;->checkState()V

    .line 179
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;->permutation:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange<TE;>;"
    return-object v0
.end method

.method public getRemoved()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;->checkState()V

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange<TE;>;"
    return-object v0
.end method
