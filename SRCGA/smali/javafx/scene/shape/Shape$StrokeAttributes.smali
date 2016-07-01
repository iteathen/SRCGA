.class final Ljavafx/scene/shape/Shape$StrokeAttributes;
.super Ljava/lang/Object;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/shape/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrokeAttributes"
.end annotation


# instance fields
.field private cssDashArray:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private dashArray:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private dashOffset:Ljavafx/beans/property/DoubleProperty;

.field private lineCap:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/StrokeLineCap;",
            ">;"
        }
    .end annotation
.end field

.field private lineJoin:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/StrokeLineJoin;",
            ">;"
        }
    .end annotation
.end field

.field private miterLimit:Ljavafx/beans/property/DoubleProperty;

.field final synthetic this$0:Ljavafx/scene/shape/Shape;

.field private type:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/StrokeType;",
            ">;"
        }
    .end annotation
.end field

.field private width:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method private constructor <init>(Ljavafx/scene/shape/Shape;)V
    .locals 4

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->this$0:Ljavafx/scene/shape/Shape;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1422
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->cssDashArray:Ljavafx/beans/property/ObjectProperty;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/shape/Shape;Ljavafx/scene/shape/Shape$1;)V
    .locals 5

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/shape/Shape;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/shape/Shape$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Shape$StrokeAttributes;-><init>(Ljavafx/scene/shape/Shape;)V

    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/shape/Shape$StrokeAttributes;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->cssDashArrayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/shape/Shape$StrokeAttributes;Ljavafx/css/CssMetaData;)V
    .locals 4

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, p1

    .local v1, "x1":Ljavafx/css/CssMetaData;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/shape/Shape$StrokeAttributes;->invalidated(Ljavafx/css/CssMetaData;)V

    return-void
.end method

.method private cssDashArrayProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->cssDashArray:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1425
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape$StrokeAttributes$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Shape$StrokeAttributes$8;-><init>(Ljavafx/scene/shape/Shape$StrokeAttributes;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->cssDashArray:Ljavafx/beans/property/ObjectProperty;

    .line 1465
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->cssDashArray:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v0
.end method

.method private invalidated(Ljavafx/css/CssMetaData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/shape/Shape;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, p1

    .local v1, "propertyCssKey":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/scene/shape/Shape;*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->this$0:Ljavafx/scene/shape/Shape;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_STROKEATTRS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 1498
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->this$0:Ljavafx/scene/shape/Shape;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljavafx/scene/shape/Shape;->access$2502(Ljavafx/scene/shape/Shape;Z)Z

    move-result v2

    .line 1499
    move-object v2, v1

    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->STROKE_DASH_OFFSET:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$2300()Ljavafx/css/CssMetaData;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 1502
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->this$0:Ljavafx/scene/shape/Shape;

    invoke-static {v2}, Ljavafx/scene/shape/Shape;->access$2600(Ljavafx/scene/shape/Shape;)V

    .line 1504
    :cond_0
    return-void
.end method


# virtual methods
.method public canSetDashOffset()Z
    .locals 2

    .prologue
    .line 1489
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashOffset:Ljavafx/beans/property/DoubleProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashOffset:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetLineCap()Z
    .locals 2

    .prologue
    .line 1481
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineCap:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineCap:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetLineJoin()Z
    .locals 2

    .prologue
    .line 1477
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineJoin:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineJoin:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetMiterLimit()Z
    .locals 2

    .prologue
    .line 1485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->miterLimit:Ljavafx/beans/property/DoubleProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->miterLimit:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetType()Z
    .locals 2

    .prologue
    .line 1469
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->type:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->type:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetWidth()Z
    .locals 2

    .prologue
    .line 1473
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->width:Ljavafx/beans/property/DoubleProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dashArrayProperty()Ljavafx/collections/ObservableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1410
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashArray:Ljavafx/collections/ObservableList;

    if-nez v1, :cond_0

    .line 1411
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape$StrokeAttributes$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Shape$StrokeAttributes$7;-><init>(Ljavafx/scene/shape/Shape$StrokeAttributes;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashArray:Ljavafx/collections/ObservableList;

    .line 1419
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashArray:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v0
.end method

.method public final dashOffsetProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 1378
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashOffset:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 1379
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Shape$StrokeAttributes$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/shape/Shape$StrokeAttributes$6;-><init>(Ljavafx/scene/shape/Shape$StrokeAttributes;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashOffset:Ljavafx/beans/property/DoubleProperty;

    .line 1405
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashOffset:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v1
.end method

.method public getDashOffset()D
    .locals 4

    .prologue
    .line 1373
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashOffset:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 1374
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-wide v1

    .line 1373
    .restart local v1    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashOffset:Ljavafx/beans/property/DoubleProperty;

    .line 1374
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getLineCap()Ljavafx/scene/shape/StrokeLineCap;
    .locals 2

    .prologue
    .line 1302
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineCap:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_LINE_CAP:Ljavafx/scene/shape/StrokeLineCap;
    invoke-static {}, Ljavafx/scene/shape/Shape;->access$2000()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v1

    .line 1303
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v0

    .line 1302
    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineCap:Ljavafx/beans/property/ObjectProperty;

    .line 1303
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/StrokeLineCap;

    goto :goto_0
.end method

.method public getLineJoin()Ljavafx/scene/shape/StrokeLineJoin;
    .locals 2

    .prologue
    .line 1267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineJoin:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_LINE_JOIN:Ljavafx/scene/shape/StrokeLineJoin;
    invoke-static {}, Ljavafx/scene/shape/Shape;->access$1800()Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v1

    .line 1268
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v0

    .line 1267
    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineJoin:Ljavafx/beans/property/ObjectProperty;

    .line 1268
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/StrokeLineJoin;

    goto :goto_0
.end method

.method public getMiterLimit()D
    .locals 4

    .prologue
    .line 1338
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->miterLimit:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 1339
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-wide v1

    .line 1338
    .restart local v1    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->miterLimit:Ljavafx/beans/property/DoubleProperty;

    .line 1339
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getType()Ljavafx/scene/shape/StrokeType;
    .locals 2

    .prologue
    .line 1201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->type:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_TYPE:Ljavafx/scene/shape/StrokeType;
    invoke-static {}, Ljavafx/scene/shape/Shape;->access$1400()Ljavafx/scene/shape/StrokeType;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->type:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/StrokeType;

    goto :goto_0
.end method

.method public getWidth()D
    .locals 4

    .prologue
    .line 1234
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public hasDashArray()Z
    .locals 2

    .prologue
    .line 1493
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashArray:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final lineCapProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/StrokeLineCap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineCap:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1308
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape$StrokeAttributes$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 1309
    # getter for: Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_LINE_CAP:Ljavafx/scene/shape/StrokeLineCap;
    invoke-static {}, Ljavafx/scene/shape/Shape;->access$2000()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/shape/Shape$StrokeAttributes$4;-><init>(Ljavafx/scene/shape/Shape$StrokeAttributes;Ljavafx/scene/shape/StrokeLineCap;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineCap:Ljavafx/beans/property/ObjectProperty;

    .line 1334
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineCap:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v0
.end method

.method public final lineJoinProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/StrokeLineJoin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineJoin:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1273
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape$StrokeAttributes$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 1274
    # getter for: Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_LINE_JOIN:Ljavafx/scene/shape/StrokeLineJoin;
    invoke-static {}, Ljavafx/scene/shape/Shape;->access$1800()Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/shape/Shape$StrokeAttributes$3;-><init>(Ljavafx/scene/shape/Shape$StrokeAttributes;Ljavafx/scene/shape/StrokeLineJoin;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineJoin:Ljavafx/beans/property/ObjectProperty;

    .line 1298
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineJoin:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v0
.end method

.method public final miterLimitProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 1343
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->miterLimit:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 1344
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Shape$StrokeAttributes$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/shape/Shape$StrokeAttributes$5;-><init>(Ljavafx/scene/shape/Shape$StrokeAttributes;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->miterLimit:Ljavafx/beans/property/DoubleProperty;

    .line 1369
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->miterLimit:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v1
.end method

.method public final typeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/StrokeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->type:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1206
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape$StrokeAttributes$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    # getter for: Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_TYPE:Ljavafx/scene/shape/StrokeType;
    invoke-static {}, Ljavafx/scene/shape/Shape;->access$1400()Ljavafx/scene/shape/StrokeType;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/shape/Shape$StrokeAttributes$1;-><init>(Ljavafx/scene/shape/Shape$StrokeAttributes;Ljavafx/scene/shape/StrokeType;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->type:Ljavafx/beans/property/ObjectProperty;

    .line 1230
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->type:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v0
.end method

.method public final widthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 1238
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 1239
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Shape$StrokeAttributes$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/shape/Shape$StrokeAttributes$2;-><init>(Ljavafx/scene/shape/Shape$StrokeAttributes;D)V

    iput-object v3, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->width:Ljavafx/beans/property/DoubleProperty;

    .line 1263
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes;->width:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes;
    return-object v1
.end method
