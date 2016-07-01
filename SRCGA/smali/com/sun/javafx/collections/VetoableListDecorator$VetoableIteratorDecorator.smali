.class Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;
.super Ljava/lang/Object;
.source "VetoableListDecorator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/VetoableListDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VetoableIteratorDecorator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected cursor:I

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected lastReturned:I

.field private modCount:I

.field private final modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

.field protected final offset:I

.field final synthetic this$0:Lcom/sun/javafx/collections/VetoableListDecorator;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/Iterator;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;",
            "Ljava/util/Iterator",
            "<TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableIteratorDecorator;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "modCountAccessor":Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;
    move-object v3, p3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    move v4, p4

    .local v4, "offset":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 674
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    .line 675
    move-object v5, v0

    move-object v6, v2

    invoke-interface {v6}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;->get()I

    move-result v6

    iput v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->modCount:I

    .line 676
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->it:Ljava/util/Iterator;

    .line 677
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->offset:I

    .line 678
    return-void
.end method


# virtual methods
.method protected checkForComodification()V
    .locals 4

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableIteratorDecorator;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->modCount:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    invoke-interface {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;->get()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 714
    new-instance v1, Ljava/util/ConcurrentModificationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 716
    :cond_0
    return-void
.end method

.method protected decrementModCount()V
    .locals 3

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableIteratorDecorator;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    invoke-interface {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;->decrementAndGet()I

    move-result v2

    iput v2, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->modCount:I

    .line 724
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableIteratorDecorator;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->checkForComodification()V

    .line 683
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableIteratorDecorator;"
    return v0
.end method

.method protected incrementModCount()V
    .locals 3

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableIteratorDecorator;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    invoke-interface {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;->incrementAndGet()I

    move-result v2

    iput v2, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->modCount:I

    .line 720
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableIteratorDecorator;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->checkForComodification()V

    .line 689
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->it:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 690
    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->cursor:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->cursor:I

    iput v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->lastReturned:I

    .line 691
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableIteratorDecorator;"
    return-object v0
.end method

.method public remove()V
    .locals 10

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableIteratorDecorator;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->checkForComodification()V

    .line 697
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->lastReturned:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 698
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 700
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->offset:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->lastReturned:I

    add-int/2addr v7, v8

    aput v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->offset:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->lastReturned:I

    add-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 702
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->incrementModCount()V

    .line 703
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->it:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    .line 708
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->lastReturned:I

    .line 709
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->cursor:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->cursor:I

    .line 710
    return-void

    .line 704
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 705
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;->decrementModCount()V

    .line 706
    move-object v2, v1

    throw v2
.end method
