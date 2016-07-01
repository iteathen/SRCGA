.class Ljavafx/scene/Node$MiscProperties$1;
.super Ljavafx/scene/Node$LazyBoundsProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$MiscProperties;->boundsInParentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/Node$MiscProperties;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$MiscProperties;)V
    .locals 4

    .prologue
    .line 6419
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$1;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$MiscProperties;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$MiscProperties$1;->this$1:Ljavafx/scene/Node$MiscProperties;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/Node$LazyBoundsProperty;-><init>(Ljavafx/scene/Node$1;)V

    return-void
.end method


# virtual methods
.method protected computeBounds()Ljavafx/geometry/Bounds;
    .locals 17

    .prologue
    .line 6429
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$1;
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/javafx/util/TempState;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v1, v2

    .line 6430
    .local v1, "tempBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties$1;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->getTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    move-object v1, v2

    .line 6433
    new-instance v2, Ljavafx/geometry/BoundingBox;

    move-object/from16 v16, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v16

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v4

    float-to-double v4, v4

    move-object v6, v1

    .line 6434
    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v6

    float-to-double v6, v6

    move-object v8, v1

    .line 6435
    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v1

    .line 6436
    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    .line 6437
    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v12

    float-to-double v12, v12

    move-object v14, v1

    .line 6438
    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getDepth()F

    move-result v14

    float-to-double v14, v14

    invoke-direct/range {v3 .. v15}, Ljavafx/geometry/BoundingBox;-><init>(DDDDDD)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$1;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties$1;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6448
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$1;
    const-string v1, "boundsInParent"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$1;
    return-object v0
.end method
