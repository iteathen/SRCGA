.class final Ljavafx/scene/Camera$3;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera$3;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pickNodeXYPlane(Ljavafx/scene/Camera;Ljavafx/scene/Node;DD)Ljavafx/geometry/Point2D;
    .locals 15

    .prologue
    .line 512
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Camera$3;
    move-object/from16 v2, p1

    .local v2, "camera":Ljavafx/scene/Camera;
    move-object/from16 v3, p2

    .local v3, "node":Ljavafx/scene/Node;
    move-wide/from16 v4, p3

    .local v4, "x":D
    move-wide/from16 v6, p5

    .local v6, "y":D
    move-object v8, v2

    move-object v9, v3

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Ljavafx/scene/Camera;->access$200(Ljavafx/scene/Camera;Ljavafx/scene/Node;DD)Ljavafx/geometry/Point2D;

    move-result-object v8

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/Camera$3;
    return-object v1
.end method

.method public pickProjectPlane(Ljavafx/scene/Camera;DD)Ljavafx/geometry/Point3D;
    .locals 12

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera$3;
    move-object v1, p1

    .local v1, "camera":Ljavafx/scene/Camera;
    move-wide v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-object v6, v1

    move-wide v7, v2

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/scene/Camera;->pickProjectPlane(DD)Ljavafx/geometry/Point3D;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/Camera$3;
    return-object v0
.end method

.method public project(Ljavafx/scene/Camera;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;
    .locals 5

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera$3;
    move-object v1, p1

    .local v1, "camera":Ljavafx/scene/Camera;
    move-object v2, p2

    .local v2, "p":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/Camera;->access$100(Ljavafx/scene/Camera;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Camera$3;
    return-object v0
.end method
