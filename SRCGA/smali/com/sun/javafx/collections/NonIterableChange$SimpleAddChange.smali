.class public Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;
.super Lcom/sun/javafx/collections/NonIterableChange;
.source "NonIterableChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/NonIterableChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleAddChange"
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


# direct methods
.method public constructor <init>(IILjavafx/collections/ObservableList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, p3

    .local v3, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/collections/NonIterableChange;-><init>(IILjavafx/collections/ObservableList;)V

    .line 144
    return-void
.end method


# virtual methods
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
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;->checkState()V

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange<TE;>;"
    return-object v0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;->checkState()V

    .line 149
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleAddChange<TE;>;"
    return v0
.end method
