.class public Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange;
.super Lcom/sun/javafx/collections/NonIterableChange;
.source "NonIterableChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/NonIterableChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleUpdateChange"
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
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange<TE;>;"
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

    .line 191
    return-void
.end method

.method public constructor <init>(ILjavafx/collections/ObservableList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange<TE;>;"
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v0

    move v4, v1

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange;-><init>(IILjavafx/collections/ObservableList;)V

    .line 187
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
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange<TE;>;"
    return-object v0
.end method

.method public wasUpdated()Z
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange<TE;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleUpdateChange<TE;>;"
    return v0
.end method
