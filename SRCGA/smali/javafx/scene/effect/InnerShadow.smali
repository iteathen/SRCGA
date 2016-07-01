.class public Ljavafx/scene/effect/InnerShadow;
.super Ljavafx/scene/effect/Effect;
.source "InnerShadow.java"


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

.field private choke:Ljavafx/beans/property/DoubleProperty;

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

.field private width:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDLjavafx/scene/paint/Color;)V
    .locals 13

    .prologue
    .line 95
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
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

    .line 96
    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/InnerShadow;->setRadius(D)V

    .line 97
    move-object v9, v1

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/InnerShadow;->setOffsetX(D)V

    .line 98
    move-object v9, v1

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/effect/InnerShadow;->setOffsetY(D)V

    .line 99
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljavafx/scene/effect/InnerShadow;->setColor(Ljavafx/scene/paint/Color;)V

    .line 100
    return-void
.end method

.method public constructor <init>(DLjavafx/scene/paint/Color;)V
    .locals 9

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-wide v2, p1

    .local v2, "radius":D
    move-object v4, p3

    .local v4, "color":Ljavafx/scene/paint/Color;
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 83
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/InnerShadow;->setRadius(D)V

    .line 84
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/effect/InnerShadow;->setColor(Ljavafx/scene/paint/Color;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/effect/BlurType;Ljavafx/scene/paint/Color;DDDD)V
    .locals 15

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object/from16 v1, p1

    .local v1, "blurType":Ljavafx/scene/effect/BlurType;
    move-object/from16 v2, p2

    .local v2, "color":Ljavafx/scene/paint/Color;
    move-wide/from16 v3, p3

    .local v3, "radius":D
    move-wide/from16 v5, p5

    .local v5, "choke":D
    move-wide/from16 v7, p7

    .local v7, "offsetX":D
    move-wide/from16 v9, p9

    .local v9, "offsetY":D
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 116
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljavafx/scene/effect/InnerShadow;->setBlurType(Ljavafx/scene/effect/BlurType;)V

    .line 117
    move-object v11, v0

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljavafx/scene/effect/InnerShadow;->setColor(Ljavafx/scene/paint/Color;)V

    .line 118
    move-object v11, v0

    move-wide v12, v3

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/InnerShadow;->setRadius(D)V

    .line 119
    move-object v11, v0

    move-wide v12, v5

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/InnerShadow;->setChoke(D)V

    .line 120
    move-object v11, v0

    move-wide v12, v7

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/InnerShadow;->setOffsetX(D)V

    .line 121
    move-object v11, v0

    move-wide v12, v9

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/effect/InnerShadow;->setOffsetY(D)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/effect/InnerShadow;)Z
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/effect/InnerShadow;->changeIsLocal:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/effect/InnerShadow;
    return v0
.end method

.method static synthetic access$002(Ljavafx/scene/effect/InnerShadow;Z)Z
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/InnerShadow;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/effect/InnerShadow;->changeIsLocal:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/effect/InnerShadow;
    return v0
.end method

.method static synthetic access$100(Ljavafx/scene/effect/InnerShadow;D)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/InnerShadow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/InnerShadow;->updateRadius(D)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/effect/InnerShadow;D)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/InnerShadow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/InnerShadow;->updateWidth(D)V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/effect/InnerShadow;D)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/InnerShadow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/InnerShadow;->updateHeight(D)V

    return-void
.end method

.method private getBlurTypeInternal()Ljavafx/scene/effect/BlurType;
    .locals 3

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/InnerShadow;->getBlurType()Ljavafx/scene/effect/BlurType;

    move-result-object v2

    move-object v1, v2

    .line 615
    .local v1, "bt":Ljavafx/scene/effect/BlurType;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private getColorInternal()Ljavafx/scene/paint/Color;
    .locals 3

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/InnerShadow;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    move-object v1, v2

    .line 610
    .local v1, "c":Ljavafx/scene/paint/Color;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private updateHeight(D)V
    .locals 11

    .prologue
    .line 362
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-wide v2, p1

    .local v2, "value":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/InnerShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/InnerShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_3

    .line 363
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/InnerShadow;->getWidth()D

    move-result-wide v6

    move-wide v8, v2

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 364
    .local v4, "newrad":D
    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 365
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 366
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 368
    :cond_1
    move-object v6, v1

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/InnerShadow;->setRadius(D)V

    .line 369
    .line 375
    .end local v4    # "newrad":D
    :cond_2
    :goto_0
    return-void

    .line 370
    :cond_3
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/InnerShadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/InnerShadow;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_2

    .line 371
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/InnerShadow;->getRadius()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 372
    .local v4, "newdim":D
    move-object v6, v1

    move-wide v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    move-wide v9, v2

    sub-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/InnerShadow;->setWidth(D)V

    goto :goto_0
.end method

.method private updateRadius(D)V
    .locals 11

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-wide v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    move-wide v3, v5

    .line 222
    .local v3, "newdim":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/InnerShadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/InnerShadow;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v5

    if-nez v5, :cond_1

    .line 224
    :cond_0
    move-object v5, v0

    move-wide v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/effect/InnerShadow;->getWidth()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/InnerShadow;->setHeight(D)V

    .line 232
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 227
    move-object v5, v0

    move-wide v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/effect/InnerShadow;->getHeight()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/InnerShadow;->setWidth(D)V

    goto :goto_0

    .line 229
    :cond_3
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/InnerShadow;->setWidth(D)V

    .line 230
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/InnerShadow;->setHeight(D)V

    goto :goto_0
.end method

.method private updateWidth(D)V
    .locals 11

    .prologue
    .line 291
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-wide v2, p1

    .local v2, "value":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/InnerShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/InnerShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_3

    .line 292
    :cond_0
    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/effect/InnerShadow;->getHeight()D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 293
    .local v4, "newrad":D
    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 294
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 295
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 297
    :cond_1
    move-object v6, v1

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/InnerShadow;->setRadius(D)V

    .line 298
    .line 304
    .end local v4    # "newrad":D
    :cond_2
    :goto_0
    return-void

    .line 299
    :cond_3
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_2

    .line 300
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/InnerShadow;->getRadius()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 301
    .local v4, "newdim":D
    move-object v6, v1

    move-wide v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    move-wide v9, v2

    sub-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/InnerShadow;->setHeight(D)V

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
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 400
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/InnerShadow$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/InnerShadow$4;-><init>(Ljavafx/scene/effect/InnerShadow;Ljavafx/scene/effect/BlurType;)V

    iput-object v2, v1, Ljavafx/scene/effect/InnerShadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    .line 418
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0
.end method

.method public final chokeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->choke:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 453
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/InnerShadow$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/InnerShadow$5;-><init>(Ljavafx/scene/effect/InnerShadow;)V

    iput-object v2, v1, Ljavafx/scene/effect/InnerShadow;->choke:Ljavafx/beans/property/DoubleProperty;

    .line 471
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->choke:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
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
    .line 496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->color:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 497
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/InnerShadow$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/InnerShadow$6;-><init>(Ljavafx/scene/effect/InnerShadow;Ljavafx/scene/paint/Color;)V

    iput-object v2, v1, Ljavafx/scene/effect/InnerShadow;->color:Ljavafx/beans/property/ObjectProperty;

    .line 515
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->color:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0
.end method

.method public final getBlurType()Ljavafx/scene/effect/BlurType;
    .locals 2

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/BlurType;

    goto :goto_0
.end method

.method public final getChoke()D
    .locals 4

    .prologue
    .line 448
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->choke:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->choke:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getColor()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->color:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->color:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    goto :goto_0
.end method

.method public final getHeight()D
    .locals 4

    .prologue
    .line 328
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4035000000000000L    # 21.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getOffsetX()D
    .locals 4

    .prologue
    .line 536
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->offsetX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->offsetX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getOffsetY()D
    .locals 4

    .prologue
    .line 581
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->offsetY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->offsetY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getRadius()D
    .locals 4

    .prologue
    .line 186
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 256
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4035000000000000L    # 21.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 332
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 333
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/InnerShadow$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/InnerShadow$3;-><init>(Ljavafx/scene/effect/InnerShadow;D)V

    iput-object v3, v2, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    .line 359
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->height:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v1
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 157
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 158
    const/4 v3, 0x0

    move v0, v3

    .line 161
    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    :goto_0
    return v0

    .line 159
    .restart local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 160
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 161
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
    .line 658
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    new-instance v2, Ljavafx/scene/effect/InnerShadow;

    move-object v14, v2

    move-object v2, v14

    move-object v3, v14

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/InnerShadow;->getBlurType()Ljavafx/scene/effect/BlurType;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/effect/InnerShadow;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v5

    move-object v6, v0

    .line 659
    invoke-virtual {v6}, Ljavafx/scene/effect/InnerShadow;->getRadius()D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/effect/InnerShadow;->getChoke()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/effect/InnerShadow;->getOffsetX()D

    move-result-wide v10

    move-object v12, v0

    .line 660
    invoke-virtual {v12}, Ljavafx/scene/effect/InnerShadow;->getOffsetY()D

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Ljavafx/scene/effect/InnerShadow;-><init>(Ljavafx/scene/effect/BlurType;Ljavafx/scene/paint/Color;DDDD)V

    move-object v1, v2

    .line 661
    .local v1, "is":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/InnerShadow;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 662
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->getWidth()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/effect/InnerShadow;->setWidth(D)V

    .line 663
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->getHeight()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/effect/InnerShadow;->setHeight(D)V

    .line 664
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/InnerShadow;->impl_createImpl()Lcom/sun/scenario/effect/InnerShadow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/InnerShadow;
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    new-instance v1, Lcom/sun/scenario/effect/InnerShadow;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/InnerShadow;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/effect/InnerShadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/scene/effect/InnerShadow;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0
.end method

.method impl_update()V
    .locals 10

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 621
    .local v1, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 622
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 625
    :cond_0
    move-object v3, v0

    .line 626
    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/InnerShadow;

    move-object v2, v3

    .line 627
    .local v2, "peer":Lcom/sun/scenario/effect/InnerShadow;
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InnerShadow;->setShadowSourceInput(Lcom/sun/scenario/effect/Effect;)V

    .line 628
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InnerShadow;->setContentInput(Lcom/sun/scenario/effect/Effect;)V

    .line 629
    move-object v3, v2

    const-wide/16 v4, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/InnerShadow;->getWidth()D

    move-result-wide v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InnerShadow;->setGaussianWidth(F)V

    .line 630
    move-object v3, v2

    const-wide/16 v4, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/InnerShadow;->getHeight()D

    move-result-wide v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InnerShadow;->setGaussianHeight(F)V

    .line 631
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/effect/InnerShadow;->getBlurTypeInternal()Ljavafx/scene/effect/BlurType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/Toolkit;->toShadowMode(Ljavafx/scene/effect/BlurType;)Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InnerShadow;->setShadowMode(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)V

    .line 632
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/effect/InnerShadow;->getColorInternal()Ljavafx/scene/paint/Color;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/Toolkit;->toColor4f(Ljavafx/scene/paint/Color;)Lcom/sun/scenario/effect/Color4f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InnerShadow;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 633
    move-object v3, v2

    const-wide/16 v4, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/InnerShadow;->getChoke()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InnerShadow;->setChoke(F)V

    .line 634
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/InnerShadow;->getOffsetX()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InnerShadow;->setOffsetX(I)V

    .line 635
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/InnerShadow;->getOffsetY()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/InnerShadow;->setOffsetY(I)V

    .line 636
    return-void

    .line 627
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    goto/16 :goto_0

    .line 628
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    goto/16 :goto_1
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
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 149
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "input"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/InnerShadow;->input:Ljavafx/beans/property/ObjectProperty;

    .line 151
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0
.end method

.method public final offsetXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->offsetX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 541
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/InnerShadow$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/InnerShadow$7;-><init>(Ljavafx/scene/effect/InnerShadow;)V

    iput-object v2, v1, Ljavafx/scene/effect/InnerShadow;->offsetX:Ljavafx/beans/property/DoubleProperty;

    .line 560
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->offsetX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0
.end method

.method public final offsetYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->offsetY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 586
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/InnerShadow$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/InnerShadow$8;-><init>(Ljavafx/scene/effect/InnerShadow;)V

    iput-object v2, v1, Ljavafx/scene/effect/InnerShadow;->offsetY:Ljavafx/beans/property/DoubleProperty;

    .line 605
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/InnerShadow;->offsetY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v0
.end method

.method public final radiusProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 190
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 191
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/InnerShadow$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/InnerShadow$1;-><init>(Ljavafx/scene/effect/InnerShadow;D)V

    iput-object v3, v2, Ljavafx/scene/effect/InnerShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 217
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->radius:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v1
.end method

.method public final setBlurType(Ljavafx/scene/effect/BlurType;)V
    .locals 4

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/BlurType;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/InnerShadow;->blurTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method public final setChoke(D)V
    .locals 7

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->chokeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 445
    return-void
.end method

.method public final setColor(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/InnerShadow;->colorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 489
    return-void
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 325
    return-void
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/InnerShadow;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public final setOffsetX(D)V
    .locals 7

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->offsetXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 533
    return-void
.end method

.method public final setOffsetY(D)V
    .locals 7

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->offsetYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 578
    return-void
.end method

.method public final setRadius(D)V
    .locals 7

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->radiusProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 183
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/InnerShadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/InnerShadow;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 253
    return-void
.end method

.method public final widthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 260
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/InnerShadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 261
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/InnerShadow$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/InnerShadow$2;-><init>(Ljavafx/scene/effect/InnerShadow;D)V

    iput-object v3, v2, Ljavafx/scene/effect/InnerShadow;->width:Ljavafx/beans/property/DoubleProperty;

    .line 287
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/InnerShadow;->width:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/InnerShadow;
    return-object v1
.end method
