.class public abstract Ljavafx/scene/chart/ValueAxis;
.super Ljavafx/scene/chart/Axis;
.source "ValueAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/ValueAxis$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Ljavafx/scene/chart/Axis",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final currentLowerBound:Ljavafx/beans/property/DoubleProperty;

.field dataMaxValue:D

.field dataMinValue:D

.field private lowerBound:Ljavafx/beans/property/DoubleProperty;

.field private minorTickCount:Ljavafx/beans/property/IntegerProperty;

.field private minorTickLength:Ljavafx/beans/property/DoubleProperty;

.field private minorTickMarkValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final minorTickPath:Ljavafx/scene/shape/Path;

.field private minorTickVisible:Ljavafx/beans/property/BooleanProperty;

.field private offset:D

.field private scale:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private final tickLabelFormatter:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private upperBound:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    .line 248
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v2, v1

    invoke-direct {v2}, Ljavafx/scene/chart/Axis;-><init>()V

    .line 60
    move-object v2, v1

    new-instance v3, Ljavafx/scene/shape/Path;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljavafx/scene/shape/Path;-><init>()V

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    .line 70
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    .line 78
    move-object v2, v1

    new-instance v3, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    const-string v6, "currentLowerBound"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxis;->currentLowerBound:Ljavafx/beans/property/DoubleProperty;

    .line 83
    move-object v2, v1

    new-instance v3, Ljavafx/scene/chart/ValueAxis$1;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/ValueAxis$1;-><init>(Ljavafx/scene/chart/ValueAxis;Z)V

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxis;->minorTickVisible:Ljavafx/beans/property/BooleanProperty;

    .line 110
    move-object v2, v1

    new-instance v3, Ljavafx/scene/chart/ValueAxis$2;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "scale"

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/chart/ValueAxis$2;-><init>(Ljavafx/scene/chart/ValueAxis;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxis;->scale:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 123
    move-object v2, v1

    new-instance v3, Ljavafx/scene/chart/ValueAxis$3;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/ValueAxis$3;-><init>(Ljavafx/scene/chart/ValueAxis;D)V

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxis;->upperBound:Ljavafx/beans/property/DoubleProperty;

    .line 146
    move-object v2, v1

    new-instance v3, Ljavafx/scene/chart/ValueAxis$4;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/ValueAxis$4;-><init>(Ljavafx/scene/chart/ValueAxis;D)V

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxis;->lowerBound:Ljavafx/beans/property/DoubleProperty;

    .line 169
    move-object v2, v1

    new-instance v3, Ljavafx/scene/chart/ValueAxis$5;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/ValueAxis$5;-><init>(Ljavafx/scene/chart/ValueAxis;Ljavafx/util/StringConverter;)V

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxis;->tickLabelFormatter:Ljavafx/beans/property/ObjectProperty;

    .line 190
    move-object v2, v1

    new-instance v3, Ljavafx/scene/chart/ValueAxis$6;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/ValueAxis$6;-><init>(Ljavafx/scene/chart/ValueAxis;D)V

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxis;->minorTickLength:Ljavafx/beans/property/DoubleProperty;

    .line 218
    move-object v2, v1

    new-instance v3, Ljavafx/scene/chart/ValueAxis$7;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/ValueAxis$7;-><init>(Ljavafx/scene/chart/ValueAxis;I)V

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxis;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    .line 249
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v2}, Ljavafx/scene/shape/Path;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "axis-minor-tick-mark"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 250
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/chart/ValueAxis;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 251
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide v1, p1

    .local v1, "lowerBound":D
    move-wide v3, p3

    .local v3, "upperBound":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/chart/ValueAxis;-><init>()V

    .line 261
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/ValueAxis;->setAutoRanging(Z)V

    .line 262
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/ValueAxis;->setLowerBound(D)V

    .line 263
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/ValueAxis;->setUpperBound(D)V

    .line 264
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/chart/ValueAxis;)Ljavafx/scene/shape/Path;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/ValueAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/ValueAxis;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/chart/ValueAxis;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/ValueAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->minorTickLength:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/ValueAxis;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/chart/ValueAxis;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/ValueAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/ValueAxis;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/chart/ValueAxis;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/ValueAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->minorTickVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/ValueAxis;
    return-object v0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 586
    # getter for: Ljavafx/scene/chart/ValueAxis$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->access$700()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final autoRange(D)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 280
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "length":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/ValueAxis;->isAutoRanging()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 282
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/ValueAxis;->getTickLabelFont()Ljavafx/scene/text/Font;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    move-wide v4, v6

    .line 283
    .local v4, "labelSize":D
    move-object v6, v1

    move-object v7, v1

    iget-wide v7, v7, Ljavafx/scene/chart/ValueAxis;->dataMinValue:D

    move-object v9, v1

    iget-wide v9, v9, Ljavafx/scene/chart/ValueAxis;->dataMaxValue:D

    move-wide v11, v2

    move-wide v13, v4

    invoke-virtual/range {v6 .. v14}, Ljavafx/scene/chart/ValueAxis;->autoRange(DDDD)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .line 285
    .end local v1    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    .end local v4    # "labelSize":D
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/ValueAxis;->getRange()Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    goto :goto_0
.end method

.method protected autoRange(DDDD)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 322
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide v2, p1

    .local v2, "minValue":D
    move-wide v4, p3

    .local v4, "maxValue":D
    move-wide/from16 v6, p5

    .local v6, "length":D
    move-wide/from16 v8, p7

    .local v8, "labelSize":D
    const/4 v10, 0x0

    move-object v1, v10

    .end local v1    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v1
.end method

.method protected abstract calculateMinorTickMarks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected final calculateNewScale(DDD)D
    .locals 17

    .prologue
    .line 298
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "length":D
    move-wide/from16 v3, p3

    .local v3, "lowerBound":D
    move-wide/from16 v5, p5

    .local v5, "upperBound":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v7, v10

    .line 299
    .local v7, "newScale":D
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/chart/ValueAxis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v10

    move-object v9, v10

    .line 300
    .local v9, "side":Ljavafx/geometry/Side;
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/geometry/Side;->isVertical()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 301
    move-object v10, v0

    move-wide v11, v1

    iput-wide v11, v10, Ljavafx/scene/chart/ValueAxis;->offset:D

    .line 302
    move-wide v10, v5

    move-wide v12, v3

    sub-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    move-wide v10, v1

    neg-double v10, v10

    :goto_0
    move-wide v7, v10

    .line 307
    :goto_1
    move-wide v10, v7

    move-wide v0, v10

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-wide v0

    .line 302
    .restart local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    :cond_0
    move-wide v10, v1

    move-wide v12, v5

    move-wide v14, v3

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    neg-double v10, v10

    goto :goto_0

    .line 304
    :cond_1
    move-object v10, v0

    const-wide/16 v11, 0x0

    iput-wide v11, v10, Ljavafx/scene/chart/ValueAxis;->offset:D

    .line 305
    move-wide v10, v5

    move-wide v12, v3

    sub-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_2

    move-wide v10, v1

    :goto_2
    move-wide v7, v10

    goto :goto_1

    :cond_2
    move-wide v10, v1

    move-wide v12, v5

    move-wide v14, v3

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    goto :goto_2
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    invoke-static {}, Ljavafx/scene/chart/ValueAxis;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method public getDisplayPosition(Ljava/lang/Number;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Number;, "TT;"
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/scene/chart/ValueAxis;->offset:D

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/ValueAxis;->currentLowerBound:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/ValueAxis;->getScale()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-wide v0
.end method

.method public bridge synthetic getDisplayPosition(Ljava/lang/Object;)D
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-wide v0
.end method

.method public final getLowerBound()D
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->lowerBound:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-wide v0
.end method

.method public final getMinorTickCount()I
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return v0
.end method

.method public final getMinorTickLength()D
    .locals 3

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->minorTickLength:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-wide v0
.end method

.method public final getScale()D
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->scale:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-wide v0
.end method

.method public final getTickLabelFormatter()Ljavafx/util/StringConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->tickLabelFormatter:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method public final getUpperBound()D
    .locals 3

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->upperBound:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-wide v0
.end method

.method public getValueForDisplay(D)Ljava/lang/Number;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide v1, p1

    .local v1, "displayPosition":D
    move-object v3, v0

    move-wide v4, v1

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/chart/ValueAxis;->offset:D

    sub-double/2addr v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/ValueAxis;->getScale()D

    move-result-wide v6

    div-double/2addr v4, v6

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/ValueAxis;->currentLowerBound:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/ValueAxis;->toRealValue(D)Ljava/lang/Number;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method public bridge synthetic getValueForDisplay(D)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/ValueAxis;->getValueForDisplay(D)Ljava/lang/Number;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method public getZeroPosition()D
    .locals 6

    .prologue
    .line 482
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/ValueAxis;->getLowerBound()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/chart/ValueAxis;->getUpperBound()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    move-wide v1, v2

    .line 484
    .end local v1    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    :cond_1
    move-object v2, v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method public invalidateRange(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 436
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v2, p1

    .local v2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/ValueAxis;->getUpperBound()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/chart/ValueAxis;->dataMaxValue:D

    .line 438
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/chart/ValueAxis;->getLowerBound()D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/chart/ValueAxis;->dataMinValue:D

    .line 445
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    move-object v4, v5

    .line 446
    .local v4, "dataValue":Ljava/lang/Number;, "TT;"
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/chart/ValueAxis;->dataMinValue:D

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/chart/ValueAxis;->dataMinValue:D

    .line 447
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/chart/ValueAxis;->dataMaxValue:D

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v5, Ljavafx/scene/chart/ValueAxis;->dataMaxValue:D

    .line 448
    goto :goto_1

    .line 440
    .end local v4    # "dataValue":Ljava/lang/Number;, "TT;"
    :cond_0
    move-object v5, v1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v6, v5, Ljavafx/scene/chart/ValueAxis;->dataMinValue:D

    .line 443
    move-object v5, v1

    const-wide v6, -0x10000000000001L

    iput-wide v6, v5, Ljavafx/scene/chart/ValueAxis;->dataMaxValue:D

    goto :goto_0

    .line 449
    :cond_1
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/chart/Axis;->invalidateRange(Ljava/util/List;)V

    .line 450
    return-void
.end method

.method public final isMinorTickVisible()Z
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->minorTickVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return v0
.end method

.method public isValueOnAxis(Ljava/lang/Number;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Number;, "TT;"
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-wide v2, v4

    .line 495
    .local v2, "num":D
    move-wide v4, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/ValueAxis;->getLowerBound()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/chart/ValueAxis;->getUpperBound()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isValueOnAxis(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/ValueAxis;->isValueOnAxis(Ljava/lang/Number;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return v0
.end method

.method protected layoutChildren()V
    .locals 27

    .prologue
    .line 348
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/chart/ValueAxis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v14

    move-object v4, v14

    .line 349
    .local v4, "side":Ljavafx/geometry/Side;
    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/geometry/Side;->isVertical()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/chart/ValueAxis;->getHeight()D

    move-result-wide v14

    :goto_0
    move-wide v5, v14

    .line 351
    .local v5, "length":D
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/chart/ValueAxis;->isAutoRanging()Z

    move-result v14

    if-nez v14, :cond_0

    .line 353
    move-object v14, v3

    move-object v15, v3

    move-wide/from16 v16, v5

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/ValueAxis;->getLowerBound()D

    move-result-wide v18

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/ValueAxis;->getUpperBound()D

    move-result-wide v20

    invoke-virtual/range {v15 .. v21}, Ljavafx/scene/chart/ValueAxis;->calculateNewScale(DDD)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/chart/ValueAxis;->setScale(D)V

    .line 355
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->currentLowerBound:Ljavafx/beans/property/DoubleProperty;

    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/scene/chart/ValueAxis;->getLowerBound()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 358
    :cond_0
    move-object v14, v3

    invoke-super {v14}, Ljavafx/scene/chart/Axis;->layoutChildren()V

    .line 361
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v14}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-interface {v14}, Ljavafx/collections/ObservableList;->clear()V

    .line 363
    const-wide/16 v14, 0x0

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/chart/ValueAxis;->getMinorTickLength()D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-wide v7, v14

    .line 366
    .local v7, "minorTickLength":D
    move-wide v14, v7

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_3

    move-wide v14, v5

    const/16 v16, 0x2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/chart/ValueAxis;->getTickMarks()Ljavafx/collections/ObservableList;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljavafx/collections/ObservableList;->size()I

    move-result v17

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_3

    .line 369
    const/4 v14, 0x2

    move-object v15, v3

    iget-object v15, v15, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    mul-int/2addr v14, v15

    int-to-double v14, v14

    move-wide/from16 v16, v5

    const/16 v18, 0x2

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/chart/ValueAxis;->getTickMarks()Ljavafx/collections/ObservableList;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljavafx/collections/ObservableList;->size()I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    move v9, v14

    .line 370
    .local v9, "stripFactor":I
    sget-object v14, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 372
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    const-wide/high16 v15, -0x4020000000000000L    # -0.5

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 373
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 374
    const/4 v14, 0x0

    move v10, v14

    .local v10, "i":I
    :goto_1
    move v14, v10

    move-object v15, v3

    iget-object v15, v15, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 375
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    move v15, v10

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    move-object v11, v14

    .line 376
    .local v11, "value":Ljava/lang/Number;, "TT;"
    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v14

    move-wide v12, v14

    .line 377
    .local v12, "y":D
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_1

    move-wide v14, v12

    move-wide/from16 v16, v5

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_1

    .line 378
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v14}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x0

    new-instance v18, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v20, v3

    .line 379
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/ValueAxis;->getWidth()D

    move-result-wide v20

    move-wide/from16 v22, v7

    sub-double v20, v20, v22

    move-wide/from16 v22, v12

    invoke-direct/range {v19 .. v23}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v18, v16, v17

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x1

    new-instance v18, Ljavafx/scene/shape/LineTo;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v20, v3

    .line 380
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/ValueAxis;->getWidth()D

    move-result-wide v20

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v22

    move-wide/from16 v22, v12

    invoke-direct/range {v19 .. v23}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v18, v16, v17

    .line 378
    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v14

    .line 374
    :cond_1
    move v14, v10

    move v15, v9

    add-int/2addr v14, v15

    move v10, v14

    goto :goto_1

    .line 349
    .end local v5    # "length":D
    .end local v7    # "minorTickLength":D
    .end local v9    # "stripFactor":I
    .end local v10    # "i":I
    .end local v11    # "value":Ljava/lang/Number;, "TT;"
    .end local v12    # "y":D
    :cond_2
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/chart/ValueAxis;->getWidth()D

    move-result-wide v14

    goto/16 :goto_0

    .line 374
    .line 424
    .restart local v5    # "length":D
    .restart local v7    # "minorTickLength":D
    :cond_3
    :goto_2
    return-void

    .line 383
    .restart local v9    # "stripFactor":I
    :cond_4
    sget-object v14, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 385
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 386
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 387
    const/4 v14, 0x0

    move v10, v14

    .restart local v10    # "i":I
    :goto_3
    move v14, v10

    move-object v15, v3

    iget-object v15, v15, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 388
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    move v15, v10

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    move-object v11, v14

    .line 389
    .restart local v11    # "value":Ljava/lang/Number;, "TT;"
    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v14

    move-wide v12, v14

    .line 390
    .restart local v12    # "y":D
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_5

    move-wide v14, v12

    move-wide/from16 v16, v5

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_5

    .line 391
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v14}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x0

    new-instance v18, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v12

    invoke-direct/range {v19 .. v23}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v18, v16, v17

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x1

    new-instance v18, Ljavafx/scene/shape/LineTo;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-wide/from16 v20, v7

    move-wide/from16 v22, v12

    invoke-direct/range {v19 .. v23}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v18, v16, v17

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v14

    .line 387
    :cond_5
    move v14, v10

    move v15, v9

    add-int/2addr v14, v15

    move v10, v14

    goto :goto_3

    .end local v11    # "value":Ljava/lang/Number;, "TT;"
    .end local v12    # "y":D
    :cond_6
    goto/16 :goto_2

    .line 396
    .end local v10    # "i":I
    :cond_7
    sget-object v14, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 398
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 399
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    const-wide/high16 v15, -0x4020000000000000L    # -0.5

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 400
    const/4 v14, 0x0

    move v10, v14

    .restart local v10    # "i":I
    :goto_4
    move v14, v10

    move-object v15, v3

    iget-object v15, v15, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 401
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    move v15, v10

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    move-object v11, v14

    .line 402
    .restart local v11    # "value":Ljava/lang/Number;, "TT;"
    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v14

    move-wide v12, v14

    .line 403
    .local v12, "x":D
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_8

    move-wide v14, v12

    move-wide/from16 v16, v5

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_8

    .line 404
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v14}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x0

    new-instance v18, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-wide/from16 v20, v12

    move-object/from16 v22, v3

    .line 405
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/ValueAxis;->getHeight()D

    move-result-wide v22

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v24

    invoke-direct/range {v19 .. v23}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v18, v16, v17

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x1

    new-instance v18, Ljavafx/scene/shape/LineTo;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-wide/from16 v20, v12

    move-object/from16 v22, v3

    .line 406
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/ValueAxis;->getHeight()D

    move-result-wide v22

    move-wide/from16 v24, v7

    sub-double v22, v22, v24

    invoke-direct/range {v19 .. v23}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v18, v16, v17

    .line 404
    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v14

    .line 400
    :cond_8
    move v14, v10

    move v15, v9

    add-int/2addr v14, v15

    move v10, v14

    goto :goto_4

    .end local v11    # "value":Ljava/lang/Number;, "TT;"
    .end local v12    # "x":D
    :cond_9
    goto/16 :goto_2

    .line 411
    .end local v10    # "i":I
    :cond_a
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 412
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 413
    const/4 v14, 0x0

    move v10, v14

    .restart local v10    # "i":I
    :goto_5
    move v14, v10

    move-object v15, v3

    iget-object v15, v15, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 414
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    move v15, v10

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    move-object v11, v14

    .line 415
    .restart local v11    # "value":Ljava/lang/Number;, "TT;"
    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljavafx/scene/chart/ValueAxis;->getDisplayPosition(Ljava/lang/Number;)D

    move-result-wide v14

    move-wide v12, v14

    .line 416
    .restart local v12    # "x":D
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_b

    move-wide v14, v12

    move-wide/from16 v16, v5

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_b

    .line 417
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/chart/ValueAxis;->minorTickPath:Ljavafx/scene/shape/Path;

    invoke-virtual {v14}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljavafx/scene/shape/PathElement;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x0

    new-instance v18, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-wide/from16 v20, v12

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v19 .. v23}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    aput-object v18, v16, v17

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const/16 v17, 0x1

    new-instance v18, Ljavafx/scene/shape/LineTo;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-wide/from16 v20, v12

    move-wide/from16 v22, v7

    invoke-direct/range {v19 .. v23}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    aput-object v18, v16, v17

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v14

    .line 413
    :cond_b
    move v14, v10

    move v15, v9

    add-int/2addr v14, v15

    move v10, v14

    goto :goto_5
.end method

.method public final lowerBoundProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->lowerBound:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method public final minorTickCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method public final minorTickLengthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->minorTickLength:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method public final minorTickVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->minorTickVisible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method public final scaleProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->scale:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method scalePropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->scale:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method public final setLowerBound(D)V
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/ValueAxis;->lowerBound:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setMinorTickCount(I)V
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/ValueAxis;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    return-void
.end method

.method public final setMinorTickLength(D)V
    .locals 7

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/ValueAxis;->minorTickLength:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setMinorTickVisible(Z)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/ValueAxis;->minorTickVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method protected final setScale(D)V
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide v1, p1

    .local v1, "scale":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/ValueAxis;->scale:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    return-void
.end method

.method public final setTickLabelFormatter(Ljavafx/util/StringConverter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/ValueAxis;->tickLabelFormatter:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setUpperBound(D)V
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/ValueAxis;->upperBound:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final tickLabelFormatterProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->tickLabelFormatter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method protected tickMarksUpdated()V
    .locals 3

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/chart/Axis;->tickMarksUpdated()V

    .line 341
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/ValueAxis;->calculateMinorTickMarks()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/chart/ValueAxis;->minorTickMarkValues:Ljava/util/List;

    .line 342
    return-void
.end method

.method public toNumericValue(Ljava/lang/Number;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Number;, "TT;"
    move-object v2, v1

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    :goto_0
    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-wide v0

    .restart local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public bridge synthetic toNumericValue(Ljava/lang/Object;)D
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/ValueAxis;->toNumericValue(Ljava/lang/Number;)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-wide v0
.end method

.method public toRealValue(D)Ljava/lang/Number;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .prologue
    .line 516
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide v2, p1

    .local v2, "value":D
    new-instance v4, Ljava/lang/Double;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    move-object v1, v4

    .end local v1    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v1
.end method

.method public bridge synthetic toRealValue(D)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/ValueAxis;->toRealValue(D)Ljava/lang/Number;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method

.method public final upperBoundProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis;->upperBound:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    return-object v0
.end method
