.class final Ljavafx/scene/ImageCursor$DelayedInitialization;
.super Ljava/lang/Object;
.source "ImageCursor.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/ImageCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelayedInitialization"
.end annotation


# instance fields
.field private final hotspotX:D

.field private final hotspotY:D

.field private final images:[Ljavafx/scene/image/Image;

.field private final initAsSingle:Z

.field private final targetCursor:Ljavafx/scene/ImageCursor;

.field private waitForImages:I


# direct methods
.method private constructor <init>(Ljavafx/scene/ImageCursor;[Ljavafx/scene/image/Image;DDZ)V
    .locals 13

    .prologue
    .line 618
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/ImageCursor$DelayedInitialization;
    move-object v2, p1

    .local v2, "targetCursor":Ljavafx/scene/ImageCursor;
    move-object v3, p2

    .local v3, "images":[Ljavafx/scene/image/Image;
    move-wide/from16 v4, p3

    .local v4, "hotspotX":D
    move-wide/from16 v6, p5

    .local v6, "hotspotY":D
    move/from16 v8, p7

    .local v8, "initAsSingle":Z
    move-object v9, v1

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 619
    move-object v9, v1

    move-object v10, v2

    iput-object v10, v9, Ljavafx/scene/ImageCursor$DelayedInitialization;->targetCursor:Ljavafx/scene/ImageCursor;

    .line 620
    move-object v9, v1

    move-object v10, v3

    iput-object v10, v9, Ljavafx/scene/ImageCursor$DelayedInitialization;->images:[Ljavafx/scene/image/Image;

    .line 621
    move-object v9, v1

    move-wide v10, v4

    iput-wide v10, v9, Ljavafx/scene/ImageCursor$DelayedInitialization;->hotspotX:D

    .line 622
    move-object v9, v1

    move-wide v10, v6

    iput-wide v10, v9, Ljavafx/scene/ImageCursor$DelayedInitialization;->hotspotY:D

    .line 623
    move-object v9, v1

    move v10, v8

    iput-boolean v10, v9, Ljavafx/scene/ImageCursor$DelayedInitialization;->initAsSingle:Z

    .line 624
    return-void
.end method

.method public static applyTo(Ljavafx/scene/ImageCursor;Ljavafx/scene/image/Image;DD)V
    .locals 18

    .prologue
    .line 644
    move-object/from16 v0, p0

    .local v0, "imageCursor":Ljavafx/scene/ImageCursor;
    move-object/from16 v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-wide/from16 v2, p2

    .local v2, "hotspotX":D
    move-wide/from16 v4, p4

    .local v4, "hotspotY":D
    new-instance v7, Ljavafx/scene/ImageCursor$DelayedInitialization;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/scene/image/Image;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    move-wide v11, v2

    move-wide v13, v4

    const/4 v15, 0x1

    invoke-direct/range {v8 .. v15}, Ljavafx/scene/ImageCursor$DelayedInitialization;-><init>(Ljavafx/scene/ImageCursor;[Ljavafx/scene/image/Image;DDZ)V

    move-object v6, v7

    .line 650
    .local v6, "delayedInitialization":Ljavafx/scene/ImageCursor$DelayedInitialization;
    move-object v7, v6

    invoke-direct {v7}, Ljavafx/scene/ImageCursor$DelayedInitialization;->start()V

    .line 651
    return-void
.end method

.method public static applyTo(Ljavafx/scene/ImageCursor;[Ljavafx/scene/image/Image;DD)V
    .locals 18

    .prologue
    .line 631
    move-object/from16 v0, p0

    .local v0, "imageCursor":Ljavafx/scene/ImageCursor;
    move-object/from16 v1, p1

    .local v1, "images":[Ljavafx/scene/image/Image;
    move-wide/from16 v2, p2

    .local v2, "hotspotX":D
    move-wide/from16 v4, p4

    .local v4, "hotspotY":D
    new-instance v7, Ljavafx/scene/ImageCursor$DelayedInitialization;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    array-length v11, v11

    .line 633
    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljavafx/scene/image/Image;

    move-wide v11, v2

    move-wide v13, v4

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Ljavafx/scene/ImageCursor$DelayedInitialization;-><init>(Ljavafx/scene/ImageCursor;[Ljavafx/scene/image/Image;DDZ)V

    move-object v6, v7

    .line 637
    .local v6, "delayedInitialization":Ljavafx/scene/ImageCursor$DelayedInitialization;
    move-object v7, v6

    invoke-direct {v7}, Ljavafx/scene/ImageCursor$DelayedInitialization;->start()V

    .line 638
    return-void
.end method

.method private cleanupAndFinishInitialization()V
    .locals 12

    .prologue
    .line 663
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/ImageCursor$DelayedInitialization;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/ImageCursor$DelayedInitialization;->images:[Ljavafx/scene/image/Image;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 664
    .local v5, "image":Ljavafx/scene/image/Image;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->progressProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 663
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 667
    .end local v5    # "image":Ljavafx/scene/image/Image;
    :cond_0
    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/ImageCursor$DelayedInitialization;->initAsSingle:Z

    if-eqz v6, :cond_1

    .line 668
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/ImageCursor$DelayedInitialization;->targetCursor:Ljavafx/scene/ImageCursor;

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/ImageCursor$DelayedInitialization;->images:[Ljavafx/scene/image/Image;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/ImageCursor$DelayedInitialization;->hotspotX:D

    move-object v10, v1

    iget-wide v10, v10, Ljavafx/scene/ImageCursor$DelayedInitialization;->hotspotY:D

    invoke-static/range {v6 .. v11}, Ljavafx/scene/ImageCursor;->access$000(Ljavafx/scene/ImageCursor;Ljavafx/scene/image/Image;DD)V

    .line 672
    :goto_1
    return-void

    .line 670
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/ImageCursor$DelayedInitialization;->targetCursor:Ljavafx/scene/ImageCursor;

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/ImageCursor$DelayedInitialization;->images:[Ljavafx/scene/image/Image;

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/ImageCursor$DelayedInitialization;->hotspotX:D

    move-object v10, v1

    iget-wide v10, v10, Ljavafx/scene/ImageCursor$DelayedInitialization;->hotspotY:D

    invoke-static/range {v6 .. v11}, Ljavafx/scene/ImageCursor;->access$100(Ljavafx/scene/ImageCursor;[Ljavafx/scene/image/Image;DD)V

    goto :goto_1
.end method

.method private start()V
    .locals 11

    .prologue
    .line 654
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/ImageCursor$DelayedInitialization;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/ImageCursor$DelayedInitialization;->images:[Ljavafx/scene/image/Image;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 655
    .local v5, "image":Ljavafx/scene/image/Image;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 656
    move-object v6, v1

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Ljavafx/scene/ImageCursor$DelayedInitialization;->waitForImages:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Ljavafx/scene/ImageCursor$DelayedInitialization;->waitForImages:I

    .line 657
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->progressProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 654
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 660
    .end local v5    # "image":Ljavafx/scene/image/Image;
    :cond_1
    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor$DelayedInitialization;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v1

    check-cast v2, Ljavafx/beans/property/ReadOnlyDoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->get()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 677
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/ImageCursor$DelayedInitialization;->waitForImages:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Ljavafx/scene/ImageCursor$DelayedInitialization;->waitForImages:I

    if-nez v2, :cond_0

    .line 678
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/ImageCursor$DelayedInitialization;->cleanupAndFinishInitialization()V

    .line 681
    :cond_0
    return-void
.end method
