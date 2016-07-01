.class public Ljavafx/scene/shape/Polyline;
.super Ljavafx/scene/shape/Shape;
.source "Polyline.java"


# instance fields
.field private final points:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final shape:Lcom/sun/javafx/geom/Path2D;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Polyline;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 60
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Path2D;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    iput-object v2, v1, Ljavafx/scene/shape/Polyline;->shape:Lcom/sun/javafx/geom/Path2D;

    .line 66
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Polyline;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 67
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Polyline;->strokeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 93
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Polyline$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Polyline$1;-><init>(Ljavafx/scene/shape/Polyline;)V

    iput-object v2, v1, Ljavafx/scene/shape/Polyline;->points:Ljavafx/collections/ObservableList;

    .line 74
    return-void
.end method

.method public varargs constructor <init>([D)V
    .locals 13

    .prologue
    .line 80
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Polyline;
    move-object v2, p1

    .local v2, "points":[D
    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 60
    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/geom/Path2D;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    iput-object v9, v8, Ljavafx/scene/shape/Polyline;->shape:Lcom/sun/javafx/geom/Path2D;

    .line 66
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Polyline;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v8

    check-cast v8, Ljavafx/css/StyleableProperty;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 67
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Polyline;->strokeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v8

    check-cast v8, Ljavafx/css/StyleableProperty;

    const/4 v9, 0x0

    sget-object v10, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-interface {v8, v9, v10}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 93
    move-object v8, v1

    new-instance v9, Ljavafx/scene/shape/Polyline$1;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-direct {v10, v11}, Ljavafx/scene/shape/Polyline$1;-><init>(Ljavafx/scene/shape/Polyline;)V

    iput-object v9, v8, Ljavafx/scene/shape/Polyline;->points:Ljavafx/collections/ObservableList;

    .line 81
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 82
    move-object v8, v2

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_0

    move-object v8, v3

    move v9, v5

    aget-wide v8, v8, v9

    move-wide v6, v8

    .line 83
    .local v6, "p":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-wide v9, v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 82
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    .end local v6    # "p":D
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Polyline;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Polyline;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Polyline;->impl_geomChanged()V

    return-void
.end method


# virtual methods
.method public final getPoints()Ljavafx/collections/ObservableList;
    .locals 2
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
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Polyline;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Polyline;->points:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Polyline;
    return-object v0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/shape/Polyline;
    move-object/from16 v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/shape/Polyline;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v6, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v5, v6, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 124
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    .line 138
    .end local v0    # "this":Ljavafx/scene/shape/Polyline;
    :goto_0
    return-object v0

    .line 127
    .restart local v0    # "this":Ljavafx/scene/shape/Polyline;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 128
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/shape/Polyline;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v6, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v5, v6, :cond_2

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/Polyline;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v5, v6, :cond_3

    .line 129
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 131
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/Polyline;->getStrokeWidth()D

    move-result-wide v5

    move-wide v3, v5

    .line 132
    .local v3, "upad":D
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/Polyline;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    if-ne v5, v6, :cond_4

    .line 133
    move-wide v5, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    move-wide v3, v5

    .line 135
    :cond_4
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    move-object v12, v0

    .line 136
    invoke-virtual {v12}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    .line 135
    invoke-virtual/range {v5 .. v19}, Ljavafx/scene/shape/Polyline;->computeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;DDDDDD)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 138
    .end local v3    # "upad":D
    :cond_5
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/shape/Polyline;->impl_configShape()Lcom/sun/javafx/geom/Path2D;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljavafx/scene/shape/Polyline;->computeShapeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public impl_configShape()Lcom/sun/javafx/geom/Path2D;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Polyline;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-wide v2, v8

    .line 150
    .local v2, "p1":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-wide v4, v8

    .line 151
    .local v4, "p2":D
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/shape/Polyline;->shape:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D;->reset()V

    .line 152
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/shape/Polyline;->shape:Lcom/sun/javafx/geom/Path2D;

    move-wide v9, v2

    double-to-float v9, v9

    move-wide v10, v4

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 153
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    const/4 v9, -0x2

    and-int/lit8 v8, v8, -0x2

    move v6, v8

    .line 154
    .local v6, "numValidPoints":I
    const/4 v8, 0x2

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 155
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v7

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-wide v2, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-wide v4, v8

    .line 156
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/shape/Polyline;->shape:Lcom/sun/javafx/geom/Path2D;

    move-wide v9, v2

    double-to-float v9, v9

    move-wide v10, v4

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 154
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 158
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/shape/Polyline;->shape:Lcom/sun/javafx/geom/Path2D;

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/shape/Polyline;
    return-object v1
.end method

.method public bridge synthetic impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Polyline;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Polyline;->impl_configShape()Lcom/sun/javafx/geom/Path2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Polyline;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Polyline;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGPolyline;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGPolyline;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Polyline;
    return-object v0
.end method

.method protected impl_cssGetFillInitialValue()Ljavafx/scene/paint/Paint;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Polyline;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Polyline;
    return-object v0
.end method

.method protected impl_cssGetStrokeInitialValue()Ljavafx/scene/paint/Paint;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Polyline;
    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Polyline;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Polyline;
    move-object v4, v0

    invoke-super {v4}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 169
    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/shape/Polyline;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    const/4 v5, -0x2

    and-int/lit8 v4, v4, -0x2

    move v1, v4

    .line 171
    .local v1, "numValidPoints":I
    move v4, v1

    new-array v4, v4, [F

    move-object v2, v4

    .line 172
    .local v2, "points_array":[F
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 173
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v4, v5

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Polyline;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/sg/prism/NGPolyline;

    move-object v3, v4

    .line 176
    .local v3, "peer":Lcom/sun/javafx/sg/prism/NGPolyline;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGPolyline;->updatePolyline([F)V

    .line 178
    .end local v1    # "numValidPoints":I
    .end local v2    # "points_array":[F
    .end local v3    # "peer":Lcom/sun/javafx/sg/prism/NGPolyline;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Polyline;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Polyline["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 218
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Polyline;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 219
    .local v3, "id":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 220
    move-object v5, v2

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 223
    :cond_0
    move-object v5, v2

    const-string v6, "points="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Polyline;->getPoints()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 225
    move-object v5, v2

    const-string v6, ", fill="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Polyline;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 227
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Polyline;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v4, v5

    .line 228
    .local v4, "stroke":Ljavafx/scene/paint/Paint;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 229
    move-object v5, v2

    const-string v6, ", stroke="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 230
    move-object v5, v2

    const-string v6, ", strokeWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Polyline;->getStrokeWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 233
    :cond_1
    move-object v5, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/shape/Polyline;
    return-object v1
.end method
