.class public Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;
.super Lcom/sun/javafx/sg/prism/NGCamera;
.source "NGPerspectiveCamera.java"


# instance fields
.field private final fixedEyeAtCameraZero:Z

.field private fovrad:D

.field private verticalFieldOfView:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;
    move v1, p1

    .local v1, "fixedEyeAtCameraZero":Z
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGCamera;-><init>()V

    .line 49
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->fixedEyeAtCameraZero:Z

    .line 50
    return-void
.end method


# virtual methods
.method public computePickRay(FFLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;
    .locals 25

    .prologue
    .line 62
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;
    move/from16 v4, p1

    .local v4, "x":F
    move/from16 v5, p2

    .local v5, "y":F
    move-object/from16 v6, p3

    .local v6, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move v7, v4

    float-to-double v7, v7

    move v9, v5

    float-to-double v9, v9

    move-object v11, v3

    iget-boolean v11, v11, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->fixedEyeAtCameraZero:Z

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->viewWidth:D

    move-object v14, v3

    iget-wide v14, v14, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->viewHeight:D

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->fovrad:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->verticalFieldOfView:Z

    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->worldTransform:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->zNear:D

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->zFar:D

    move-wide/from16 v22, v0

    move-object/from16 v24, v6

    invoke-static/range {v7 .. v24}, Lcom/sun/javafx/geom/PickRay;->computePerspectivePickRay(DDZDDDZLcom/sun/javafx/geom/transform/Affine3D;DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v7

    move-object v3, v7

    .end local v3    # "this":Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;
    return-object v3
.end method

.method public setFieldOfView(F)V
    .locals 6

    .prologue
    .line 53
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;
    move v2, p1

    .local v2, "fieldOfViewDegrees":F
    move-object v3, v1

    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->fovrad:D

    .line 54
    return-void
.end method

.method public setVerticalFieldOfView(Z)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;
    move v1, p1

    .local v1, "verticalFieldOfView":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGPerspectiveCamera;->verticalFieldOfView:Z

    .line 58
    return-void
.end method
