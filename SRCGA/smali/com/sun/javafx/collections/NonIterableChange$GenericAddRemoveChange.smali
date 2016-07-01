.class public Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;
.super Lcom/sun/javafx/collections/NonIterableChange;
.source "NonIterableChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/NonIterableChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericAddRemoveChange"
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
.method public constructor <init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<TE;>;",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;, "Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, p3

    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v4, p4

    .local v4, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/collections/NonIterableChange;-><init>(IILjavafx/collections/ObservableList;)V

    .line 107
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;->removed:Ljava/util/List;

    .line 108
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
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;, "Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;->checkState()V

    .line 113
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;->removed:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;, "Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange<TE;>;"
    return-object v0
.end method
