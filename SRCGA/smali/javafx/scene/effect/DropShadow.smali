.class public Ljavafx/scene/effect/DropShadow;
.super Ljavafx/scene/effect/Effect;
.source "DropShadow.java"


# instance fields
.field private blurType:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/BlurType;",
            ">;"
        }
    .end annotation
.end field

.field private changeIsLocal:Z

.field private color:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field

.field private height:Ljavafx/beans/property/DoubleProperty;

.field private input:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private offsetX:Ljavafx/beans/property/DoubleProperty;

.field private offsetY:Ljavafx/beans/property/DoubleProperty;

.field private radius:Ljavafx/beans/property/DoubleProperty;

.field private spread:Ljavafx/beans/property/DoubleProperty;

.field private width:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDLjavafx/scene/paint/Color;)V
    .locals 13

    .prologue
    .line 115
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v2, p1

    .local v2, "radius":D
    move-wide/from16 v4, p3

    .local v4, "offsetX":D
    move-wide/from16 v6, p5

    .local v6, "offsetY":D
    move-object/from16 v8, p7

    .local v8, "color":Ljavafx/scene/paint/Color;
    move-object v9, v1

    invoke-direct {v9}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 116
    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/DropShadow;->setRadius(D)V

    .line 117
    move-object v9, v1

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/DropShadow;->setOffsetX(D)V

    .line 118
    move-object v9, v1

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/DropShadow;->setOffsetY(D)V

    .line 119
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljavafx/scene/effect/DropShadow;->setColor(Ljavafx/scene/paint/Color;)V

    .line 120
    return-void
.end method

.method public constructor <init>(DLjavafx/scene/paint/Color;)V
    .locals 9

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v2, p1

    .local v2, "radius":D
    move-object v4, p3

    .local v4, "color":Ljavafx/scene/paint/Color;
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 102
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/DropShadow;->setRadius(D)V

    .line 103
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/effect/DropShadow;->setColor(Ljavafx/scene/paint/Color;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/effect/BlurType;Ljavafx/scene/paint/Color;DDDD)V
    .locals 15

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object/from16 v1, p1

    .local v1, "blurType":Ljavafx/scene/effect/BlurType;
    move-object/from16 v2, p2

    .local v2, "color":Ljavafx/scene/paint/Color;
    move-wide/from16 v3, p3

    .local v3, "radius":D
    move-wide/from16 v5, p5

    .local v5, "spread":D
    move-wide/from16 v7, p7

    .local v7, "offsetX":D
    move-wide/from16 v9, p9

    .local v9, "offsetY":D
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 136
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljavafx/scene/effect/DropShadow;->setBlurType(Ljavafx/scene/effect/BlurType;)V

    .line 137
    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljavafx/scene/effect/DropShadow;->setColor(Ljavafx/scene/paint/Color;)V

    .line 138
    move-object v11, v0

    move-wide v12, v3

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/DropShadow;->setRadius(D)V

    .line 139
    move-object v11, v0

    move-wide v12, v5

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/DropShadow;->setSpread(D)V

    .line 140
    move-object v11, v0

    move-wide v12, v7

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/DropShadow;->setOffsetX(D)V

    .line 141
    move-object v11, v0

    move-wide v12, v9

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/DropShadow;->setOffsetY(D)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/effect/DropShadow;)Z
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/effect/DropShadow;->changeIsLocal:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/effect/DropShadow;
    return v0
.end method

.method static synthetic access$002(Ljavafx/scene/effect/DropShadow;Z)Z
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/DropShadow;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/effect/DropShadow;->changeIsLocal:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/effect/DropShadow;
    return v0
.end method

.method static synthetic access$100(Ljavafx/scene/effect/DropShadow;D)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/DropShadow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/DropShadow;->updateRadius(D)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/effect/DropShadow;D)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/DropShadow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/DropShadow;->updateWidth(D)V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/effect/DropShadow;D)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/DropShadow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/DropShadow;->updateHeight(D)V

    return-void
.end method

.method private getBlurTypeInternal()Ljavafx/scene/effect/BlurType;
    .locals 3

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/DropShadow;->getBlurType()Ljavafx/scene/effect/BlurType;

    move-result-object v2

    move-object v1, v2

    .line 661
    .local v1, "bt":Ljavafx/scene/effect/BlurType;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private getClampedHeight()F
    .locals 8

    .prologue
    .line 647
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/DropShadow;->getHeight()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return v1
.end method

.method private getClampedSpread()F
    .locals 8

    .prologue
    .line 651
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/DropShadow;->getSpread()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return v1
.end method

.method private getClampedWidth()F
    .locals 8

    .prologue
    .line 643
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/DropShadow;->getWidth()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return v1
.end method

.method private getColorInternal()Ljavafx/scene/paint/Color;
    .locals 3

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/DropShadow;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    move-object v1, v2

    .line 656
    .local v1, "c":Ljavafx/scene/paint/Color;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private updateHeight(D)V
    .locals 11

    .prologue
    .line 395
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v2, p1

    .local v2, "value":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/DropShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/DropShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_3

    .line 396
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/DropShadow;->getWidth()D

    move-result-wide v6

    move-wide v8, v2

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 397
    .local v4, "newrad":D
    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 398
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 399
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 401
    :cond_1
    move-object v6, v1

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/DropShadow;->setRadius(D)V

    .line 402
    .line 408
    .end local v4    # "newrad":D
    :cond_2
    :goto_0
    return-void

    .line 403
    :cond_3
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/DropShadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/DropShadow;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_2

    .line 404
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/DropShadow;->getRadius()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 405
    .local v4, "newdim":D
    move-object v6, v1

    move-wide v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    move-wide v9, v2

    sub-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/DropShadow;->setWidth(D)V

    goto :goto_0
.end method

.method private updateRadius(D)V
    .locals 11

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-wide v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    move-wide v3, v5

    .line 241
    .local v3, "newdim":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/DropShadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/DropShadow;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 255
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v5

    if-nez v5, :cond_1

    .line 256
    :cond_0
    move-object v5, v0

    move-wide v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/effect/DropShadow;->getWidth()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/DropShadow;->setHeight(D)V

    .line 264
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 259
    move-object v5, v0

    move-wide v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/effect/DropShadow;->getHeight()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/DropShadow;->setWidth(D)V

    goto :goto_0

    .line 261
    :cond_3
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/DropShadow;->setWidth(D)V

    .line 262
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/DropShadow;->setHeight(D)V

    goto :goto_0
.end method

.method private updateWidth(D)V
    .locals 11

    .prologue
    .line 323
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v2, p1

    .local v2, "value":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/DropShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/DropShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_3

    .line 324
    :cond_0
    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/effect/DropShadow;->getHeight()D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 325
    .local v4, "newrad":D
    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 326
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 327
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 329
    :cond_1
    move-object v6, v1

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/DropShadow;->setRadius(D)V

    .line 330
    .line 336
    .end local v4    # "newrad":D
    :cond_2
    :goto_0
    return-void

    .line 331
    :cond_3
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_2

    .line 332
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/DropShadow;->getRadius()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 333
    .local v4, "newdim":D
    move-object v6, v1

    move-wide v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    move-wide v9, v2

    sub-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/DropShadow;->setHeight(D)V

    goto :goto_0
.end method


# virtual methods
.method public final blurTypeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/BlurType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 433
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/DropShadow$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/DropShadow$4;-><init>(Ljavafx/scene/effect/DropShadow;Ljavafx/scene/effect/BlurType;)V

    iput-object v2, v1, Ljavafx/scene/effect/DropShadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    .line 452
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0
.end method

.method public final colorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->color:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 531
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/DropShadow$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/DropShadow$6;-><init>(Ljavafx/scene/effect/DropShadow;Ljavafx/scene/paint/Color;)V

    iput-object v2, v1, Ljavafx/scene/effect/DropShadow;->color:Ljavafx/beans/property/ObjectProperty;

    .line 549
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->color:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0
.end method

.method public final getBlurType()Ljavafx/scene/effect/BlurType;
    .locals 2

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/BlurType;

    goto :goto_0
.end method

.method public final getColor()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->color:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->color:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    goto :goto_0
.end method

.method public final getHeight()D
    .locals 4

    .prologue
    .line 360
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4035000000000000L    # 21.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getOffsetX()D
    .locals 4

    .prologue
    .line 570
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->offsetX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->offsetX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getOffsetY()D
    .locals 4

    .prologue
    .line 615
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->offsetY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->offsetY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getRadius()D
    .locals 4

    .prologue
    .line 205
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getSpread()D
    .locals 4

    .prologue
    .line 482
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->spread:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->spread:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 288
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4035000000000000L    # 21.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 364
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 365
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/DropShadow$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/DropShadow$3;-><init>(Ljavafx/scene/effect/DropShadow;D)V

    iput-object v3, v2, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    .line 391
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->height:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v1
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 176
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 177
    const/4 v3, 0x0

    move v0, v3

    .line 180
    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    :goto_0
    return v0

    .line 178
    .restart local v0    # "this":Ljavafx/scene/effect/DropShadow;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 179
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 180
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    new-instance v2, Ljavafx/scene/effect/DropShadow;

    move-object v14, v2

    move-object v2, v14

    move-object v3, v14

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/DropShadow;->getBlurType()Ljavafx/scene/effect/BlurType;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/effect/DropShadow;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v5

    move-object v6, v0

    .line 727
    invoke-virtual {v6}, Ljavafx/scene/effect/DropShadow;->getRadius()D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/effect/DropShadow;->getSpread()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/effect/DropShadow;->getOffsetX()D

    move-result-wide v10

    move-object v12, v0

    .line 728
    invoke-virtual {v12}, Ljavafx/scene/effect/DropShadow;->getOffsetY()D

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Ljavafx/scene/effect/DropShadow;-><init>(Ljavafx/scene/effect/BlurType;Ljavafx/scene/paint/Color;DDDD)V

    move-object v1, v2

    .line 729
    .local v1, "d":Ljavafx/scene/effect/DropShadow;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/DropShadow;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 730
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->getWidth()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/effect/DropShadow;->setWidth(D)V

    .line 731
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->getHeight()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/effect/DropShadow;->setHeight(D)V

    .line 732
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/DropShadow;
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    new-instance v1, Lcom/sun/scenario/effect/DropShadow;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/DropShadow;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/DropShadow;->impl_createImpl()Lcom/sun/scenario/effect/DropShadow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 694
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object/from16 v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object/from16 v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v10, v1

    sget-object v11, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v12, v3

    move-object v13, v4

    move-object v14, v0

    .line 697
    invoke-virtual {v14}, Ljavafx/scene/effect/DropShadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v14

    .line 694
    invoke-static {v10, v11, v12, v13, v14}, Ljavafx/scene/effect/DropShadow;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v1, v10

    .line 699
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/effect/DropShadow;->getOffsetX()D

    move-result-wide v10

    double-to-int v10, v10

    move v5, v10

    .line 700
    .local v5, "shadowX":I
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/effect/DropShadow;->getOffsetY()D

    move-result-wide v10

    double-to-int v10, v10

    move v6, v10

    .line 702
    .local v6, "shadowY":I
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v10

    move v11, v5

    int-to-float v11, v11

    add-float/2addr v10, v11

    move-object v11, v1

    .line 703
    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v11

    move v12, v6

    int-to-float v12, v12

    add-float/2addr v11, v12

    move-object v12, v1

    .line 704
    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v12

    move-object v13, v1

    .line 705
    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v13

    move v14, v5

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object v14, v1

    .line 706
    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v14

    move v15, v6

    int-to-float v15, v15

    add-float/2addr v14, v15

    move-object v15, v1

    .line 707
    invoke-virtual {v15}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v15

    .line 702
    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/geom/BaseBounds;->getInstance(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v7, v10

    .line 709
    .local v7, "shadowBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v10, v7

    move-object v11, v2

    move-object v12, v0

    .line 710
    invoke-direct {v12}, Ljavafx/scene/effect/DropShadow;->getClampedWidth()F

    move-result v12

    move-object v13, v0

    .line 711
    invoke-direct {v13}, Ljavafx/scene/effect/DropShadow;->getClampedHeight()F

    move-result v13

    move-object v14, v0

    .line 712
    invoke-direct {v14}, Ljavafx/scene/effect/DropShadow;->getBlurTypeInternal()Ljavafx/scene/effect/BlurType;

    move-result-object v14

    .line 709
    invoke-static {v10, v11, v12, v13, v14}, Ljavafx/scene/effect/DropShadow;->getShadowBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;FFLjavafx/scene/effect/BlurType;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v7, v10

    .line 713
    move-object v10, v2

    move-object v11, v1

    invoke-static {v10, v11}, Ljavafx/scene/effect/DropShadow;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v8, v10

    .line 714
    .local v8, "contentBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v10, v8

    move-object v11, v7

    invoke-virtual {v10, v11}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v9, v10

    .line 716
    .local v9, "ret":Lcom/sun/javafx/geom/BaseBounds;
    move-object v10, v9

    move-object v0, v10

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0
.end method

.method impl_update()V
    .locals 6

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 667
    .local v1, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 668
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 671
    :cond_0
    move-object v3, v0

    .line 672
    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/DropShadow;

    move-object v2, v3

    .line 673
    .local v2, "peer":Lcom/sun/scenario/effect/DropShadow;
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DropShadow;->setShadowSourceInput(Lcom/sun/scenario/effect/Effect;)V

    .line 674
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DropShadow;->setContentInput(Lcom/sun/scenario/effect/Effect;)V

    .line 675
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/DropShadow;->getClampedWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DropShadow;->setGaussianWidth(F)V

    .line 676
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/DropShadow;->getClampedHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DropShadow;->setGaussianHeight(F)V

    .line 677
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/DropShadow;->getClampedSpread()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DropShadow;->setSpread(F)V

    .line 678
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/effect/DropShadow;->getBlurTypeInternal()Ljavafx/scene/effect/BlurType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/Toolkit;->toShadowMode(Ljavafx/scene/effect/BlurType;)Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DropShadow;->setShadowMode(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)V

    .line 679
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/effect/DropShadow;->getColorInternal()Ljavafx/scene/paint/Color;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/Toolkit;->toColor4f(Ljavafx/scene/paint/Color;)Lcom/sun/scenario/effect/Color4f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DropShadow;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 680
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/DropShadow;->getOffsetX()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DropShadow;->setOffsetX(I)V

    .line 681
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/DropShadow;->getOffsetY()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/DropShadow;->setOffsetY(I)V

    .line 682
    return-void

    .line 673
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    goto :goto_0

    .line 674
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    goto :goto_1
.end method

.method public final inputProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 168
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "input"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/DropShadow;->input:Ljavafx/beans/property/ObjectProperty;

    .line 170
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0
.end method

.method public final offsetXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->offsetX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 575
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/DropShadow$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/DropShadow$7;-><init>(Ljavafx/scene/effect/DropShadow;)V

    iput-object v2, v1, Ljavafx/scene/effect/DropShadow;->offsetX:Ljavafx/beans/property/DoubleProperty;

    .line 594
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->offsetX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0
.end method

.method public final offsetYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->offsetY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 620
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/DropShadow$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/DropShadow$8;-><init>(Ljavafx/scene/effect/DropShadow;)V

    iput-object v2, v1, Ljavafx/scene/effect/DropShadow;->offsetY:Ljavafx/beans/property/DoubleProperty;

    .line 639
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->offsetY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0
.end method

.method public final radiusProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 209
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 210
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/DropShadow$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/DropShadow$1;-><init>(Ljavafx/scene/effect/DropShadow;D)V

    iput-object v3, v2, Ljavafx/scene/effect/DropShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 236
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v1
.end method

.method public final setBlurType(Ljavafx/scene/effect/BlurType;)V
    .locals 4

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/BlurType;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/DropShadow;->blurTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public final setColor(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/DropShadow;->colorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 357
    return-void
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/DropShadow;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public final setOffsetX(D)V
    .locals 7

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->offsetXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 567
    return-void
.end method

.method public final setOffsetY(D)V
    .locals 7

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->offsetYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 612
    return-void
.end method

.method public final setRadius(D)V
    .locals 7

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->radiusProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 202
    return-void
.end method

.method public final setSpread(D)V
    .locals 7

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->spreadProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 479
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/DropShadow;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 285
    return-void
.end method

.method public final spreadProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->spread:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 487
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/DropShadow$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/DropShadow$5;-><init>(Ljavafx/scene/effect/DropShadow;)V

    iput-object v2, v1, Ljavafx/scene/effect/DropShadow;->spread:Ljavafx/beans/property/DoubleProperty;

    .line 505
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow;->spread:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v0
.end method

.method public final widthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 292
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/DropShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 293
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/DropShadow$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/DropShadow$2;-><init>(Ljavafx/scene/effect/DropShadow;D)V

    iput-object v3, v2, Ljavafx/scene/effect/DropShadow;->width:Ljavafx/beans/property/DoubleProperty;

    .line 319
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/DropShadow;->width:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/DropShadow;
    return-object v1
.end method
