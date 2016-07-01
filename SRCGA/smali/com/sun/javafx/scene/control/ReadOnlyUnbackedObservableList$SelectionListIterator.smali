.class Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;
.super Ljava/lang/Object;
.source "ReadOnlyUnbackedObservableList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final list:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private pos:I


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    move-object v1, p1

    .local v1, "list":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;-><init>(Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;I)V

    .line 261
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
            "<TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    move-object v1, p1

    .local v1, "list":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move v2, p2

    .local v2, "pos":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 264
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->list:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    .line 265
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->pos:I

    .line 266
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->pos:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->list:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->pos:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->list:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->pos:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    return-object v0
.end method

.method public nextIndex()I
    .locals 3

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->pos:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->list:Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->pos:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->pos:I

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    return-object v0
.end method

.method public previousIndex()I
    .locals 3

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;->pos:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    return v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
