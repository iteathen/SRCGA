.class public Ljavafx/scene/effect/ImageInput;
.super Ljavafx/scene/effect/Effect;
.source "ImageInput.java"


# instance fields
.field private oldImage:Ljavafx/scene/image/Image;

.field private final platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

.field private source:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 96
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ImageInput$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ImageInput$1;-><init>(Ljavafx/scene/effect/ImageInput;)V

    iput-object v2, v1, Ljavafx/scene/effect/ImageInput;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/image/Image;)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v1, p1

    .local v1, "source":Ljavafx/scene/image/Image;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 96
    move-object v2, v0

    new-instance v3, Ljavafx/scene/effect/ImageInput$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/effect/ImageInput$1;-><init>(Ljavafx/scene/effect/ImageInput;)V

    iput-object v3, v2, Ljavafx/scene/effect/ImageInput;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/ImageInput;->setSource(Ljavafx/scene/image/Image;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/image/Image;DD)V
    .locals 12

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v1, p1

    .local v1, "source":Ljavafx/scene/image/Image;
    move-wide v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 96
    move-object v6, v0

    new-instance v7, Ljavafx/scene/effect/ImageInput$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Ljavafx/scene/effect/ImageInput$1;-><init>(Ljavafx/scene/effect/ImageInput;)V

    iput-object v7, v6, Ljavafx/scene/effect/ImageInput;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 73
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/effect/ImageInput;->setSource(Ljavafx/scene/image/Image;)V

    .line 74
    move-object v6, v0

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/ImageInput;->setX(D)V

    .line 75
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/effect/ImageInput;->setY(D)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/effect/ImageInput;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/ImageInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/effect/ImageInput;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/effect/ImageInput;)Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/ImageInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput;->oldImage:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/effect/ImageInput;
    return-object v0
.end method

.method static synthetic access$102(Ljavafx/scene/effect/ImageInput;Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/ImageInput;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/effect/ImageInput;->oldImage:Ljavafx/scene/image/Image;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/effect/ImageInput;
    return-object v0
.end method


# virtual methods
.method public final getSource()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput;->source:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ImageInput;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/ImageInput;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput;->source:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/image/Image;

    goto :goto_0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 167
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ImageInput;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ImageInput;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ImageInput;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/ImageInput;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ImageInput;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 213
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/ImageInput;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ImageInput;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/ImageInput;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/ImageInput;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/ImageInput;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 3

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/ImageInput;
    return v0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    new-instance v1, Ljavafx/scene/effect/ImageInput;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ImageInput;->getSource()Ljavafx/scene/image/Image;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/ImageInput;->getX()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/ImageInput;->getY()D

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Ljavafx/scene/effect/ImageInput;-><init>(Ljavafx/scene/image/Image;DD)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ImageInput;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/ImageInput;->impl_createImpl()Lcom/sun/scenario/effect/Identity;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ImageInput;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/Identity;
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    new-instance v1, Lcom/sun/scenario/effect/Identity;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/Identity;-><init>(Lcom/sun/scenario/effect/Filterable;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ImageInput;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/effect/ImageInput;
    move-object/from16 v2, p1

    .local v2, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v3, p2

    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p3

    .local v4, "node":Ljavafx/scene/Node;
    move-object/from16 v5, p4

    .local v5, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/effect/ImageInput;->getSource()Ljavafx/scene/image/Image;

    move-result-object v12

    move-object v6, v12

    .line 269
    .local v6, "localSource":Ljavafx/scene/image/Image;
    move-object v12, v6

    if-eqz v12, :cond_0

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 270
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/effect/ImageInput;->getX()D

    move-result-wide v12

    double-to-float v12, v12

    move v7, v12

    .line 271
    .local v7, "localX":F
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/effect/ImageInput;->getY()D

    move-result-wide v12

    double-to-float v12, v12

    move v8, v12

    .line 272
    .local v8, "localY":F
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v12

    double-to-float v12, v12

    move v9, v12

    .line 273
    .local v9, "localWidth":F
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v12

    double-to-float v12, v12

    move v10, v12

    .line 274
    .local v10, "localHeight":F
    new-instance v12, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move v14, v7

    move v15, v8

    move/from16 v16, v7

    move/from16 v17, v9

    add-float v16, v16, v17

    move/from16 v17, v8

    move/from16 v18, v10

    add-float v17, v17, v18

    invoke-direct/range {v13 .. v17}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v11, v12

    .line 277
    .local v11, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v12, v3

    move-object v13, v11

    invoke-static {v12, v13}, Ljavafx/scene/effect/ImageInput;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v1, v12

    .line 279
    .end local v1    # "this":Ljavafx/scene/effect/ImageInput;
    .end local v7    # "localX":F
    .end local v8    # "localY":F
    .end local v9    # "localWidth":F
    .end local v10    # "localHeight":F
    .end local v11    # "r":Lcom/sun/javafx/geom/BaseBounds;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/effect/ImageInput;
    :cond_0
    new-instance v12, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v1, v12

    goto :goto_0
.end method

.method impl_update()V
    .locals 10

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v3, v0

    .line 243
    invoke-virtual {v3}, Ljavafx/scene/effect/ImageInput;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/Identity;

    move-object v1, v3

    .line 244
    .local v1, "peer":Lcom/sun/scenario/effect/Identity;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ImageInput;->getSource()Ljavafx/scene/image/Image;

    move-result-object v3

    move-object v2, v3

    .line 245
    .local v2, "localSource":Ljavafx/scene/image/Image;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 246
    move-object v3, v1

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/Toolkit;->toFilterable(Ljavafx/scene/image/Image;)Lcom/sun/scenario/effect/Filterable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Identity;->setSource(Lcom/sun/scenario/effect/Filterable;)V

    .line 250
    :goto_0
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/geom/Point2D;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/effect/ImageInput;->getX()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/effect/ImageInput;->getY()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Identity;->setLocation(Lcom/sun/javafx/geom/Point2D;)V

    .line 251
    return-void

    .line 248
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Identity;->setSource(Lcom/sun/scenario/effect/Filterable;)V

    goto :goto_0
.end method

.method public final setSource(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/image/Image;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/ImageInput;->sourceProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ImageInput;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 164
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ImageInput;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 210
    return-void
.end method

.method public final sourceProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput;->source:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 107
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ImageInput$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ImageInput$2;-><init>(Ljavafx/scene/effect/ImageInput;)V

    iput-object v2, v1, Ljavafx/scene/effect/ImageInput;->source:Ljavafx/beans/property/ObjectProperty;

    .line 145
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput;->source:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ImageInput;
    return-object v0
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 172
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ImageInput$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ImageInput$3;-><init>(Ljavafx/scene/effect/ImageInput;)V

    iput-object v2, v1, Ljavafx/scene/effect/ImageInput;->x:Ljavafx/beans/property/DoubleProperty;

    .line 191
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ImageInput;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 218
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/ImageInput$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/ImageInput$4;-><init>(Ljavafx/scene/effect/ImageInput;)V

    iput-object v2, v1, Ljavafx/scene/effect/ImageInput;->y:Ljavafx/beans/property/DoubleProperty;

    .line 237
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ImageInput;
    return-object v0
.end method
