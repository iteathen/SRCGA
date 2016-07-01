.class Ljavafx/scene/Node$NodeTransformation$1;
.super Ljavafx/scene/Node$LazyTransformProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$NodeTransformation;->localToParentTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/Node$NodeTransformation;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$NodeTransformation;)V
    .locals 4

    .prologue
    .line 5585
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$1;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/Node$LazyTransformProperty;-><init>(Ljavafx/scene/Node$1;)V

    return-void
.end method


# virtual methods
.method protected computeTransform(Ljavafx/scene/transform/Transform;)Ljavafx/scene/transform/Transform;
    .locals 28

    .prologue
    .line 5588
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation$1;
    move-object/from16 v2, p1

    .local v2, "reuse":Ljavafx/scene/transform/Transform;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v3, v3, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 5589
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v4, v4, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    .line 5590
    invoke-static {v4}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v6, v6, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-static {v6}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v8, v8, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-static {v8}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v8

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v10, v10, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-static {v10}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v10

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v12, v12, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    .line 5591
    invoke-static {v12}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v14, v14, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-static {v14}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v18

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    .line 5592
    invoke-static/range {v20 .. v20}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v1

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljavafx/scene/Node;->access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v26

    .line 5589
    invoke-static/range {v3 .. v27}, Lcom/sun/javafx/scene/transform/TransformUtils;->immutableTransform(Ljavafx/scene/transform/Transform;DDDDDDDDDDDD)Ljavafx/scene/transform/Transform;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation$1;
    return-object v1
.end method

.method protected computeValidity()I
    .locals 2

    .prologue
    .line 5602
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$1;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Node$NodeTransformation$1;->valid:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$1;
    return v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 5607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation$1;->this$1:Ljavafx/scene/Node$NodeTransformation;

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5612
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$1;
    const-string v1, "localToParentTransform"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$1;
    return-object v0
.end method

.method protected validityKnown()Z
    .locals 2

    .prologue
    .line 5597
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation$1;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation$1;
    return v0
.end method
