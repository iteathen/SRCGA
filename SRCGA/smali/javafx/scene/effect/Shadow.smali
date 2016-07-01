.class public Ljavafx/scene/effect/Shadow;
.super Ljavafx/scene/effect/Effect;
.source "Shadow.java"


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

.field private radius:Ljavafx/beans/property/DoubleProperty;

.field private width:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(DLjavafx/scene/paint/Color;)V
    .locals 9

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    move-wide v2, p1

    .local v2, "radius":D
    move-object v4, p3

    .local v4, "color":Ljavafx/scene/paint/Color;
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 71
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/Shadow;->setRadius(D)V

    .line 72
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/effect/Shadow;->setColor(Ljavafx/scene/paint/Color;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/effect/BlurType;Ljavafx/scene/paint/Color;D)V
    .locals 9

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, p1

    .local v1, "blurType":Ljavafx/scene/effect/BlurType;
    move-object v2, p2

    .local v2, "color":Ljavafx/scene/paint/Color;
    move-wide v3, p3

    .local v3, "radius":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 84
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/effect/Shadow;->setBlurType(Ljavafx/scene/effect/BlurType;)V

    .line 85
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/effect/Shadow;->setColor(Ljavafx/scene/paint/Color;)V

    .line 86
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/Shadow;->setRadius(D)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/effect/Shadow;)Z
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/Shadow;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/effect/Shadow;->changeIsLocal:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/effect/Shadow;
    return v0
.end method

.method static synthetic access$002(Ljavafx/scene/effect/Shadow;Z)Z
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/Shadow;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/effect/Shadow;->changeIsLocal:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/effect/Shadow;
    return v0
.end method

.method static synthetic access$100(Ljavafx/scene/effect/Shadow;D)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/Shadow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Shadow;->updateRadius(D)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/effect/Shadow;D)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/Shadow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Shadow;->updateWidth(D)V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/effect/Shadow;D)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/Shadow;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Shadow;->updateHeight(D)V

    return-void
.end method

.method private getBlurTypeInternal()Ljavafx/scene/effect/BlurType;
    .locals 3

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Shadow;->getBlurType()Ljavafx/scene/effect/BlurType;

    move-result-object v2

    move-object v1, v2

    .line 447
    .local v1, "bt":Ljavafx/scene/effect/BlurType;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Shadow;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private getClampedHeight()F
    .locals 8

    .prologue
    .line 437
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Shadow;->getHeight()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Shadow;
    return v1
.end method

.method private getClampedWidth()F
    .locals 8

    .prologue
    .line 433
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Shadow;->getWidth()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Shadow;
    return v1
.end method

.method private getColorInternal()Ljavafx/scene/paint/Color;
    .locals 3

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Shadow;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    move-object v1, v2

    .line 442
    .local v1, "c":Ljavafx/scene/paint/Color;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Shadow;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private updateHeight(D)V
    .locals 11

    .prologue
    .line 328
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    move-wide v2, p1

    .local v2, "value":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/Shadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/Shadow;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_3

    .line 329
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/Shadow;->getWidth()D

    move-result-wide v6

    move-wide v8, v2

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 330
    .local v4, "newrad":D
    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 331
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 332
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 334
    :cond_1
    move-object v6, v1

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/Shadow;->setRadius(D)V

    .line 335
    .line 341
    .end local v4    # "newrad":D
    :cond_2
    :goto_0
    return-void

    .line 336
    :cond_3
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/Shadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/Shadow;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_2

    .line 337
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/Shadow;->getRadius()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 338
    .local v4, "newdim":D
    move-object v6, v1

    move-wide v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    move-wide v9, v2

    sub-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/Shadow;->setWidth(D)V

    goto :goto_0
.end method

.method private updateRadius(D)V
    .locals 11

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-wide v1, p1

    .local v1, "value":D
    move-wide v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    move-wide v3, v5

    .line 186
    .local v3, "newdim":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/Shadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/Shadow;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v5

    if-nez v5, :cond_1

    .line 188
    :cond_0
    move-object v5, v0

    move-wide v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/effect/Shadow;->getWidth()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/Shadow;->setHeight(D)V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    move-object v5, v0

    move-wide v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/effect/Shadow;->getHeight()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/Shadow;->setWidth(D)V

    goto :goto_0

    .line 193
    :cond_3
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/Shadow;->setWidth(D)V

    .line 194
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/effect/Shadow;->setHeight(D)V

    goto :goto_0
.end method

.method private updateWidth(D)V
    .locals 11

    .prologue
    .line 255
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    move-wide v2, p1

    .local v2, "value":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/Shadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/Shadow;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_3

    .line 256
    :cond_0
    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/effect/Shadow;->getHeight()D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 257
    .local v4, "newrad":D
    move-wide v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 258
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 259
    const-wide/16 v6, 0x0

    move-wide v4, v6

    .line 261
    :cond_1
    move-object v6, v1

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/Shadow;->setRadius(D)V

    .line 262
    .line 269
    .end local v4    # "newrad":D
    :cond_2
    :goto_0
    return-void

    .line 264
    :cond_3
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-eqz v6, :cond_4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v6

    if-nez v6, :cond_2

    .line 265
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/Shadow;->getRadius()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 266
    .local v4, "newdim":D
    move-object v6, v1

    move-wide v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    move-wide v9, v2

    sub-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/Shadow;->setHeight(D)V

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
    .line 365
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 366
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Shadow$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Shadow$4;-><init>(Ljavafx/scene/effect/Shadow;Ljavafx/scene/effect/BlurType;)V

    iput-object v2, v1, Ljavafx/scene/effect/Shadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    .line 385
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
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
    .line 410
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->color:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 411
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Shadow$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Shadow$5;-><init>(Ljavafx/scene/effect/Shadow;Ljavafx/scene/paint/Color;)V

    iput-object v2, v1, Ljavafx/scene/effect/Shadow;->color:Ljavafx/beans/property/ObjectProperty;

    .line 429
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->color:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    return-object v0
.end method

.method public final getBlurType()Ljavafx/scene/effect/BlurType;
    .locals 2

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Shadow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->blurType:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/BlurType;

    goto :goto_0
.end method

.method public final getColor()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->color:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Shadow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->color:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    goto :goto_0
.end method

.method public final getHeight()D
    .locals 4

    .prologue
    .line 293
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4035000000000000L    # 21.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Shadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Shadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Shadow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getRadius()D
    .locals 4

    .prologue
    .line 150
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Shadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Shadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->radius:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 220
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4035000000000000L    # 21.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Shadow;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Shadow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 297
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 298
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Shadow$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Shadow$3;-><init>(Ljavafx/scene/effect/Shadow;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    .line 324
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->height:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Shadow;
    return-object v1
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Shadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 121
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 122
    const/4 v3, 0x0

    move v0, v3

    .line 125
    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    :goto_0
    return v0

    .line 123
    .restart local v0    # "this":Ljavafx/scene/effect/Shadow;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 124
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 125
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    new-instance v3, Ljavafx/scene/effect/Shadow;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/effect/Shadow;->getBlurType()Ljavafx/scene/effect/BlurType;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/Shadow;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/effect/Shadow;->getRadius()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/scene/effect/Shadow;-><init>(Ljavafx/scene/effect/BlurType;Ljavafx/scene/paint/Color;D)V

    move-object v2, v3

    .line 494
    .local v2, "shadow":Ljavafx/scene/effect/Shadow;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Shadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Shadow;->setInput(Ljavafx/scene/effect/Effect;)V

    .line 495
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Shadow;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Shadow;->setHeight(D)V

    .line 496
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Shadow;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Shadow;->setWidth(D)V

    .line 497
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/effect/Shadow;
    return-object v1
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Shadow;->impl_createImpl()Lcom/sun/scenario/effect/GeneralShadow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/GeneralShadow;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    new-instance v1, Lcom/sun/scenario/effect/GeneralShadow;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/GeneralShadow;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v7, v3

    move-object v8, v4

    move-object v9, v0

    .line 479
    invoke-virtual {v9}, Ljavafx/scene/effect/Shadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v9

    .line 476
    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/scene/effect/Shadow;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v1, v5

    .line 480
    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    .line 481
    invoke-direct {v7}, Ljavafx/scene/effect/Shadow;->getClampedWidth()F

    move-result v7

    move-object v8, v0

    .line 482
    invoke-direct {v8}, Ljavafx/scene/effect/Shadow;->getClampedHeight()F

    move-result v8

    move-object v9, v0

    .line 483
    invoke-direct {v9}, Ljavafx/scene/effect/Shadow;->getBlurTypeInternal()Ljavafx/scene/effect/BlurType;

    move-result-object v9

    .line 480
    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/scene/effect/Shadow;->getShadowBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;FFLjavafx/scene/effect/BlurType;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    return-object v0
.end method

.method impl_update()V
    .locals 6

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Shadow;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 453
    .local v1, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 454
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 457
    :cond_0
    move-object v3, v0

    .line 458
    invoke-virtual {v3}, Ljavafx/scene/effect/Shadow;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/GeneralShadow;

    move-object v2, v3

    .line 459
    .local v2, "peer":Lcom/sun/scenario/effect/GeneralShadow;
    move-object v3, v2

    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GeneralShadow;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 460
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/Shadow;->getClampedWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GeneralShadow;->setGaussianWidth(F)V

    .line 461
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/Shadow;->getClampedHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GeneralShadow;->setGaussianHeight(F)V

    .line 462
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/effect/Shadow;->getBlurTypeInternal()Ljavafx/scene/effect/BlurType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/Toolkit;->toShadowMode(Ljavafx/scene/effect/BlurType;)Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GeneralShadow;->setShadowMode(Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;)V

    .line 463
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/effect/Shadow;->getColorInternal()Ljavafx/scene/paint/Color;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/Toolkit;->toColor4f(Ljavafx/scene/paint/Color;)Lcom/sun/scenario/effect/Color4f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/GeneralShadow;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 464
    return-void

    .line 459
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    goto :goto_0
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
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 113
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "input"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/Shadow;->input:Ljavafx/beans/property/ObjectProperty;

    .line 115
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Shadow;
    return-object v0
.end method

.method public final radiusProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 154
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->radius:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 155
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Shadow$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Shadow$1;-><init>(Ljavafx/scene/effect/Shadow;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Shadow;->radius:Ljavafx/beans/property/DoubleProperty;

    .line 181
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->radius:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Shadow;
    return-object v1
.end method

.method public final setBlurType(Ljavafx/scene/effect/BlurType;)V
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/BlurType;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Shadow;->blurTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method public final setColor(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Shadow;->colorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 403
    return-void
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Shadow;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 290
    return-void
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Shadow;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public final setRadius(D)V
    .locals 7

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Shadow;->radiusProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 147
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Shadow;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 217
    return-void
.end method

.method public final widthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 224
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 225
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Shadow$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Shadow$2;-><init>(Ljavafx/scene/effect/Shadow;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Shadow;->width:Ljavafx/beans/property/DoubleProperty;

    .line 251
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Shadow;->width:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Shadow;
    return-object v1
.end method
