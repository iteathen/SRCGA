.class public Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;
.super Lcom/sun/javafx/collections/NonIterableChange;
.source "NonIterableChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/NonIterableChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleRemovedChange"
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
.field private final removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/Object;Ljavafx/collections/ObservableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, p3

    .local v3, "removed":Ljava/lang/Object;, "TE;"
    move-object v4, p4

    .local v4, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/collections/NonIterableChange;-><init>(IILjavafx/collections/ObservableList;)V

    .line 123
    move-object v5, v0

    move-object v6, v3

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;->removed:Ljava/util/List;

    .line 124
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
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;->checkState()V

    .line 135
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;->removed:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange<TE;>;"
    return-object v0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;->checkState()V

    .line 129
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange;, "Lcom/sun/javafx/collections/NonIterableChange$SimpleRemovedChange<TE;>;"
    return v0
.end method
