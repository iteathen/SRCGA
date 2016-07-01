.class Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;
.super Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;
.source "VetoableListDecorator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/VetoableListDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VetoableListIteratorDecorator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/VetoableListDecorator",
        "<TE;>.VetoableIteratorDecorator;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final lit:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/collections/VetoableListDecorator;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/ListIterator;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;",
            "Ljava/util/ListIterator",
            "<TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "modCountAccessor":Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;
    move-object v3, p3

    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    move v4, p4

    .local v4, "offset":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    .line 732
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/Iterator;I)V

    .line 733
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lit:Ljava/util/ListIterator;

    .line 734
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 774
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->checkForComodification()V

    .line 775
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->offset:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->cursor:I

    add-int/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->offset:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->cursor:I

    add-int/2addr v8, v9

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 777
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->incrementModCount()V

    .line 778
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lit:Ljava/util/ListIterator;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    .line 783
    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->cursor:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->cursor:I

    .line 784
    return-void

    .line 779
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 780
    .local v2, "ex":Ljava/lang/Exception;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->decrementModCount()V

    .line 781
    move-object v3, v2

    throw v3
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->checkForComodification()V

    .line 739
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lit:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
    return v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->checkForComodification()V

    .line 753
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lit:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
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
    .line 744
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->checkForComodification()V

    .line 745
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lit:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 746
    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->cursor:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->cursor:I

    iput v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lastReturned:I

    .line 747
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->checkForComodification()V

    .line 759
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lit:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableListIteratorDecorator;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->checkForComodification()V

    .line 765
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lastReturned:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 766
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 768
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->offset:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lastReturned:I

    add-int/2addr v7, v8

    aput v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->offset:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lastReturned:I

    add-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 769
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;->lit:Ljava/util/ListIterator;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 770
    return-void
.end method
