.class Ljavafx/scene/Parent$2;
.super Lcom/sun/javafx/collections/VetoableListDecorator;
.source "Parent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Parent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/VetoableListDecorator",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Parent;


# direct methods
.method constructor <init>(Ljavafx/scene/Parent;Ljavafx/collections/ObservableList;)V
    .locals 5

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Parent;
    move-object v2, p2

    .local v2, "x0":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator;-><init>(Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method private constructExceptionMessage(Ljava/lang/String;Ljavafx/scene/Node;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent$2;
    move-object v1, p1

    .local v1, "cause":Ljava/lang/String;
    move-object v2, p2

    .local v2, "offendingNode":Ljavafx/scene/Node;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Children: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 510
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 511
    move-object v4, v3

    const-string v5, ": parent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 512
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 513
    move-object v4, v3

    const-string v5, ", node = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 516
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/Parent$2;
    return-object v0
.end method


# virtual methods
.method protected varargs onProposedChange(Ljava/util/List;[I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 363
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Parent$2;
    move-object/from16 v2, p1

    .local v2, "newNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v3, p2

    .local v3, "toBeRemoved":[I
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-virtual {v12}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v12

    move-object v4, v12

    .line 364
    .local v4, "scene":Ljavafx/scene/Scene;
    move-object v12, v4

    if-eqz v12, :cond_0

    .line 365
    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v12

    move-object v5, v12

    .line 366
    .local v5, "w":Ljavafx/stage/Window;
    move-object v12, v5

    if-eqz v12, :cond_0

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/stage/Window;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 367
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 370
    .end local v5    # "w":Ljavafx/stage/Window;
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljavafx/scene/Parent;->access$402(Ljavafx/scene/Parent;Z)Z

    move-result v12

    .line 372
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->size()I

    move-result v12

    move-object v13, v2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v12, v13

    int-to-long v12, v12

    move-wide v5, v12

    .line 373
    .local v5, "newLength":J
    const/4 v12, 0x0

    move v7, v12

    .line 374
    .local v7, "removedLength":I
    const/4 v12, 0x0

    move v8, v12

    .local v8, "i":I
    :goto_0
    move v12, v8

    move-object v13, v3

    array-length v13, v13

    if-ge v12, v13, :cond_1

    .line 375
    move v12, v7

    move-object v13, v3

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    move-object v14, v3

    move v15, v8

    aget v14, v14, v15

    sub-int/2addr v13, v14

    add-int/2addr v12, v13

    move v7, v12

    .line 374
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 377
    :cond_1
    move-wide v12, v5

    move v14, v7

    int-to-long v14, v14

    sub-long/2addr v12, v14

    move-wide v5, v12

    .line 381
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$900(Ljavafx/scene/Parent;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 382
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljavafx/scene/Parent;->access$102(Ljavafx/scene/Parent;Z)Z

    move-result v12

    .line 383
    .line 505
    :goto_1
    return-void

    .line 392
    :cond_2
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljavafx/scene/Parent;->access$102(Ljavafx/scene/Parent;Z)Z

    move-result v12

    .line 393
    move-wide v12, v5

    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v14}, Ljavafx/scene/Parent;->access$1000(Ljavafx/scene/Parent;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v14

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    .line 394
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljavafx/scene/Parent;->access$102(Ljavafx/scene/Parent;Z)Z

    move-result v12

    .line 395
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v8, v12

    :goto_2
    move v12, v8

    if-ltz v12, :cond_3

    .line 396
    move-object v12, v2

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v9, v12

    .line 397
    .local v9, "n":Ljavafx/scene/Node;
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$1000(Ljavafx/scene/Parent;)Ljava/util/Set;

    move-result-object v12

    move-object v13, v9

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 398
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljavafx/scene/Parent;->access$102(Ljavafx/scene/Parent;Z)Z

    move-result v12

    .line 399
    .line 421
    .end local v9    # "n":Ljavafx/scene/Node;
    :cond_3
    const/4 v12, 0x0

    move v8, v12

    :goto_3
    move v12, v8

    move-object v13, v3

    array-length v13, v13

    if-ge v12, v13, :cond_6

    .line 422
    move-object v12, v3

    move v13, v8

    aget v12, v12, v13

    move v9, v12

    .local v9, "j":I
    :goto_4
    move v12, v9

    move-object v13, v3

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    if-ge v12, v13, :cond_5

    .line 423
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$1000(Ljavafx/scene/Parent;)Ljava/util/Set;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v13}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v13

    move v14, v9

    invoke-interface {v13, v14}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v12

    .line 422
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 395
    .local v9, "n":Ljavafx/scene/Node;
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 421
    .local v9, "j":I
    :cond_5
    add-int/lit8 v8, v8, 0x2

    goto :goto_3

    .line 428
    .end local v9    # "j":I
    :cond_6
    move-object v12, v1

    :try_start_0
    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$100(Ljavafx/scene/Parent;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 431
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v8, v12

    :goto_5
    move v12, v8

    if-ltz v12, :cond_a

    .line 432
    move-object v12, v2

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v9, v12

    .line 433
    .local v9, "node":Ljavafx/scene/Node;
    move-object v12, v9

    if-nez v12, :cond_7

    .line 434
    new-instance v12, Ljava/lang/NullPointerException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    const-string v15, "child node is null"

    const/16 v16, 0x0

    .line 435
    invoke-direct/range {v14 .. v16}, Ljavafx/scene/Parent$2;->constructExceptionMessage(Ljava/lang/String;Ljavafx/scene/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v9    # "node":Ljavafx/scene/Node;
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 459
    .local v8, "e":Ljava/lang/RuntimeException;
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$1000(Ljavafx/scene/Parent;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 460
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$1000(Ljavafx/scene/Parent;)Ljava/util/Set;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v13}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v12

    .line 463
    move-object v12, v8

    throw v12

    .line 438
    .local v8, "i":I
    .restart local v9    # "node":Ljavafx/scene/Node;
    :cond_7
    move-object v12, v9

    :try_start_1
    invoke-virtual {v12}, Ljavafx/scene/Node;->getClipParent()Ljavafx/scene/Node;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 439
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    const-string v15, "node already used as a clip"

    move-object/from16 v16, v9

    .line 440
    invoke-direct/range {v14 .. v16}, Ljavafx/scene/Parent$2;->constructExceptionMessage(Ljava/lang/String;Ljavafx/scene/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 443
    :cond_8
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    move-object v13, v1

    iget-object v13, v13, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Parent;->wouldCreateCycle(Ljavafx/scene/Node;Ljavafx/scene/Node;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 444
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    const-string v15, "cycle detected"

    move-object/from16 v16, v9

    .line 445
    invoke-direct/range {v14 .. v16}, Ljavafx/scene/Parent$2;->constructExceptionMessage(Ljava/lang/String;Ljavafx/scene/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 431
    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_5

    .line 451
    .end local v9    # "node":Ljavafx/scene/Node;
    :cond_a
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$1000(Ljavafx/scene/Parent;)Ljava/util/Set;

    move-result-object v12

    move-object v13, v2

    invoke-interface {v12, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v12

    .line 452
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$1000(Ljavafx/scene/Parent;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    int-to-long v12, v12

    move-wide v14, v5

    cmp-long v12, v12, v14

    if-eqz v12, :cond_b

    .line 453
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    const-string v15, "duplicate children added"

    const/16 v16, 0x0

    .line 454
    invoke-direct/range {v14 .. v16}, Ljavafx/scene/Parent$2;->constructExceptionMessage(Ljava/lang/String;Ljavafx/scene/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    .line 468
    :cond_b
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$100(Ljavafx/scene/Parent;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 469
    goto/16 :goto_1

    .line 475
    :cond_c
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$1100(Ljavafx/scene/Parent;)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_d

    .line 476
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12, v13}, Ljavafx/scene/Parent;->access$1102(Ljavafx/scene/Parent;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 478
    :cond_d
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$1100(Ljavafx/scene/Parent;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v13, v7

    add-int/2addr v12, v13

    const/16 v13, 0x14

    if-gt v12, v13, :cond_e

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-virtual {v12}, Ljavafx/scene/Parent;->impl_isTreeVisible()Z

    move-result v12

    if-nez v12, :cond_f

    .line 480
    :cond_e
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljavafx/scene/Parent;->access$1202(Ljavafx/scene/Parent;Z)Z

    move-result v12

    .line 482
    :cond_f
    const/4 v12, 0x0

    move v8, v12

    :goto_6
    move v12, v8

    move-object v13, v3

    array-length v13, v13

    if-ge v12, v13, :cond_16

    .line 483
    move-object v12, v3

    move v13, v8

    aget v12, v12, v13

    move v9, v12

    .local v9, "j":I
    :goto_7
    move v12, v9

    move-object v13, v3

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    if-ge v12, v13, :cond_15

    .line 484
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;

    move-result-object v12

    move v13, v9

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v10, v12

    .line 485
    .local v10, "old":Ljavafx/scene/Node;
    move-object v12, v10

    invoke-virtual {v12}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v12

    move-object v11, v12

    .line 486
    .local v11, "oldScene":Ljavafx/scene/Scene;
    move-object v12, v11

    if-eqz v12, :cond_10

    .line 487
    move-object v12, v11

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljavafx/scene/Scene;->generateMouseExited(Ljavafx/scene/Node;)V

    .line 489
    :cond_10
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$600(Ljavafx/scene/Parent;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 490
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$600(Ljavafx/scene/Parent;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v12

    .line 492
    :cond_11
    move-object v12, v10

    invoke-virtual {v12}, Ljavafx/scene/Node;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 493
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljavafx/scene/Parent;->access$402(Ljavafx/scene/Parent;Z)Z

    move-result v12

    .line 494
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    move-object v13, v10

    invoke-static {v12, v13}, Ljavafx/scene/Parent;->access$1300(Ljavafx/scene/Parent;Ljavafx/scene/Node;)V

    .line 496
    :cond_12
    move-object v12, v10

    invoke-virtual {v12}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    if-ne v12, v13, :cond_13

    .line 497
    move-object v12, v10

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljavafx/scene/Node;->setParent(Ljavafx/scene/Parent;)V

    .line 498
    move-object v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Ljavafx/scene/Node;->setScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V

    .line 500
    :cond_13
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$1200(Ljavafx/scene/Parent;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 501
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Parent$2;->this$0:Ljavafx/scene/Parent;

    invoke-static {v12}, Ljavafx/scene/Parent;->access$1100(Ljavafx/scene/Parent;)Ljava/util/List;

    move-result-object v12

    move-object v13, v10

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 483
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 482
    .end local v10    # "old":Ljavafx/scene/Node;
    .end local v11    # "oldScene":Ljavafx/scene/Scene;
    :cond_15
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_6

    .line 505
    .end local v9    # "j":I
    :cond_16
    goto/16 :goto_1
.end method
