.class Ljavafx/collections/FXCollections$CheckedObservableList$1;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/collections/FXCollections$CheckedObservableList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/collections/FXCollections$CheckedObservableList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Ljavafx/collections/FXCollections$CheckedObservableList;I)V
    .locals 6

    .prologue
    .line 1431
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/collections/FXCollections$CheckedObservableList;
    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableList$1;->this$0:Ljavafx/collections/FXCollections$CheckedObservableList;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljavafx/collections/FXCollections$CheckedObservableList$1;->val$index:I

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1433
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$CheckedObservableList$1;->this$0:Ljavafx/collections/FXCollections$CheckedObservableList;

    invoke-static {v4}, Ljavafx/collections/FXCollections$CheckedObservableList;->access$000(Ljavafx/collections/FXCollections$CheckedObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Ljavafx/collections/FXCollections$CheckedObservableList$1;->val$index:I

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableList$1;->i:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1478
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList$1;->this$0:Ljavafx/collections/FXCollections$CheckedObservableList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableList;->typeCheck(Ljava/lang/Object;)V

    .line 1479
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList$1;->i:Ljava/util/ListIterator;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1480
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 1437
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 1447
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1442
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 1457
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1452
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 1462
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1467
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1468
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1472
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableList$1;, "Ljavafx/collections/FXCollections$CheckedObservableList$1;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList$1;->this$0:Ljavafx/collections/FXCollections$CheckedObservableList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableList;->typeCheck(Ljava/lang/Object;)V

    .line 1473
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableList$1;->i:Ljava/util/ListIterator;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1474
    return-void
.end method
