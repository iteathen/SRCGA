.class final Ljavafx/collections/FXCollections$EmptyObservableList$1;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections$EmptyObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 715
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    return v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList$1;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
