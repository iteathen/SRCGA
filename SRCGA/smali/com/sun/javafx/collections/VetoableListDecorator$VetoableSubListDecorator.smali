.class Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;
.super Ljava/lang/Object;
.source "VetoableListDecorator.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/VetoableListDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VetoableSubListDecorator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private modCount:I

.field private final modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

.field private final offset:I

.field private final subList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/collections/VetoableListDecorator;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;",
            "Ljava/util/List",
            "<TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "modCountAccessor":Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;
    move-object v3, p3

    .local v3, "subList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move v4, p4

    .local v4, "offset":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 388
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    .line 389
    move-object v5, v0

    move-object v6, v2

    invoke-interface {v6}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;->get()I

    move-result v6

    iput v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCount:I

    .line 390
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    .line 391
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    .line 392
    return-void
.end method

.method static synthetic access$200(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;)I
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCount:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;
    return v0
.end method

.method static synthetic access$202(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;I)I
    .locals 7

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCount:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;
    return v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;)Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;
    return-object v0
.end method

.method private checkForComodification()V
    .locals 4

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCount:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    invoke-interface {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;->get()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 633
    new-instance v1, Ljava/util/ConcurrentModificationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 635
    :cond_0
    return-void
.end method

.method private decrementModCount()V
    .locals 3

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    invoke-interface {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;->decrementAndGet()I

    move-result v2

    iput v2, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCount:I

    .line 643
    return-void
.end method

.method private incrementModCount()V
    .locals 3

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCountAccessor:Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    invoke-interface {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;->incrementAndGet()I

    move-result v2

    iput v2, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->modCount:I

    .line 639
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 555
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    move-object v5, v2

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move v10, v1

    add-int/2addr v9, v10

    aput v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move v10, v1

    add-int/2addr v9, v10

    aput v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 557
    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->incrementModCount()V

    .line 558
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .line 563
    return-void

    .line 559
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 560
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V

    .line 561
    move-object v4, v3

    throw v4
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 434
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

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

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->size()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->size()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 436
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->incrementModCount()V

    .line 437
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 441
    .line 442
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0

    .line 438
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 439
    .local v2, "ex":Ljava/lang/Exception;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V

    .line 440
    move-object v3, v2

    throw v3
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 481
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    new-instance v5, Ljava/util/ArrayList;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move v10, v1

    add-int/2addr v9, v10

    aput v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move v10, v1

    add-int/2addr v9, v10

    aput v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 483
    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->incrementModCount()V

    .line 484
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v4

    move v3, v4

    .line 485
    .local v3, "res":Z
    move v4, v3

    if-nez v4, :cond_0

    .line 486
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_0
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0

    .line 488
    .end local v3    # "res":Z
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 489
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V

    .line 490
    move-object v4, v3

    throw v4
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 465
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    new-instance v4, Ljava/util/ArrayList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->size()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->size()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 467
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->incrementModCount()V

    .line 468
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    move v2, v3

    .line 469
    .local v2, "res":Z
    move v3, v2

    if-nez v3, :cond_0

    .line 470
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0

    .line 472
    .end local v2    # "res":Z
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 473
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V

    .line 474
    move-object v3, v2

    throw v3
.end method

.method public clear()V
    .locals 10

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 529
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    aput v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->size()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 531
    move-object v2, v0

    :try_start_0
    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->incrementModCount()V

    .line 532
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .line 537
    return-void

    .line 533
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 534
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V

    .line 535
    move-object v2, v1

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 410
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 459
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 622
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 542
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 628
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 583
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 404
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 416
    new-instance v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    new-instance v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$1;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableIteratorDecorator;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/Iterator;I)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 589
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 595
    new-instance v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    new-instance v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$1;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    .line 596
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/ListIterator;I)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 602
    new-instance v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    new-instance v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$1;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move v7, v1

    .line 603
    invoke-interface {v6, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move v8, v1

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableListIteratorDecorator;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/ListIterator;I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 568
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move v9, v1

    add-int/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move v9, v1

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 570
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->incrementModCount()V

    .line 571
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v2, v3

    .line 572
    .local v2, "res":Ljava/lang/Object;, "TE;"
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return-object v0

    .line 573
    .end local v2    # "res":Ljava/lang/Object;, "TE;"
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 574
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V

    .line 575
    move-object v3, v2

    throw v3
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 448
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 449
    .local v2, "i":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 450
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 451
    const/4 v3, 0x1

    move v0, v3

    .line 453
    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 497
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move-object v6, v1

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sun/javafx/collections/VetoableListDecorator;->access$100(Lcom/sun/javafx/collections/VetoableListDecorator;Ljava/util/List;ILjava/util/Collection;Z)V

    .line 499
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->incrementModCount()V

    .line 500
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    move v2, v3

    .line 501
    .local v2, "res":Z
    move v3, v2

    if-nez v3, :cond_0

    .line 502
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0

    .line 504
    .end local v2    # "res":Z
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 505
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V

    .line 506
    move-object v3, v2

    throw v3
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 513
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move-object v6, v1

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sun/javafx/collections/VetoableListDecorator;->access$100(Lcom/sun/javafx/collections/VetoableListDecorator;Ljava/util/List;ILjava/util/Collection;Z)V

    .line 515
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->incrementModCount()V

    .line 516
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    move v2, v3

    .line 517
    .local v2, "res":Z
    move v3, v2

    if-nez v3, :cond_0

    .line 518
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0

    .line 520
    .end local v2    # "res":Z
    .restart local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 521
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->decrementModCount()V

    .line 522
    move-object v3, v2

    throw v3
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 548
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    move-object v4, v2

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move v9, v1

    add-int/2addr v8, v9

    aput v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move v9, v1

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/VetoableListDecorator;->onProposedChange(Ljava/util/List;[I)V

    .line 549
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 398
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 609
    new-instance v3, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    new-instance v6, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$1;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move v8, v1

    move v9, v2

    .line 610
    invoke-interface {v7, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->offset:I

    move v9, v1

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;Ljava/util/List;I)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 422
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 428
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->checkForComodification()V

    .line 616
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->subList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator;"
    return-object v0
.end method
