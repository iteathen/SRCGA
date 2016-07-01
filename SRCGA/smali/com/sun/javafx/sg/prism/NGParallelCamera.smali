.class public Lcom/sun/javafx/sg/prism/NGParallelCamera;
.super Lcom/sun/javafx/sg/prism/NGCamera;
.source "NGParallelCamera.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGParallelCamera;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGCamera;-><init>()V

    return-void
.end method


# virtual methods
.method public computePickRay(FFLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;
    .locals 16

    .prologue
    .line 39
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGParallelCamera;
    move/from16 v1, p1

    .local v1, "x":F
    move/from16 v2, p2

    .local v2, "y":F
    move-object/from16 v3, p3

    .local v3, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move v4, v1

    float-to-double v4, v4

    move v6, v2

    float-to-double v6, v6

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/sg/prism/NGParallelCamera;->viewHeight:D

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGParallelCamera;->worldTransform:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/sg/prism/NGParallelCamera;->zNear:D

    move-object v13, v0

    iget-wide v13, v13, Lcom/sun/javafx/sg/prism/NGParallelCamera;->zFar:D

    move-object v15, v3

    invoke-static/range {v4 .. v15}, Lcom/sun/javafx/geom/PickRay;->computeParallelPickRay(DDDLcom/sun/javafx/geom/transform/Affine3D;DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGParallelCamera;
    return-object v0
.end method
