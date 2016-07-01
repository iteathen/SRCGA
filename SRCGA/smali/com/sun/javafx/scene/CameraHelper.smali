.class public Lcom/sun/javafx/scene/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;
    }
.end annotation


# static fields
.field private static cameraAccessor:Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Ljavafx/scene/Camera;

    invoke-static {v0}, Lcom/sun/javafx/scene/CameraHelper;->forceInit(Ljava/lang/Class;)V

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/CameraHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static forceInit(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "classToInit":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v0

    .line 75
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 74
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 78
    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 77
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static pickNodeXYPlane(Ljavafx/scene/Camera;Ljavafx/scene/Node;DD)Ljavafx/geometry/Point2D;
    .locals 14

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "camera":Ljavafx/scene/Camera;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    sget-object v6, Lcom/sun/javafx/scene/CameraHelper;->cameraAccessor:Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;

    move-object v7, v0

    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    invoke-interface/range {v6 .. v12}, Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;->pickNodeXYPlane(Ljavafx/scene/Camera;Ljavafx/scene/Node;DD)Ljavafx/geometry/Point2D;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "camera":Ljavafx/scene/Camera;
    return-object v0
.end method

.method public static pickProjectPlane(Ljavafx/scene/Camera;DD)Ljavafx/geometry/Point3D;
    .locals 13

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "camera":Ljavafx/scene/Camera;
    move-wide v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    sget-object v6, Lcom/sun/javafx/scene/CameraHelper;->cameraAccessor:Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-interface/range {v6 .. v11}, Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;->pickProjectPlane(Ljavafx/scene/Camera;DD)Ljavafx/geometry/Point3D;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "camera":Ljavafx/scene/Camera;
    return-object v1
.end method

.method public static project(Ljavafx/scene/Camera;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "camera":Ljavafx/scene/Camera;
    move-object v1, p1

    .local v1, "p":Ljavafx/geometry/Point3D;
    sget-object v2, Lcom/sun/javafx/scene/CameraHelper;->cameraAccessor:Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;->project(Ljavafx/scene/Camera;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "camera":Ljavafx/scene/Camera;
    return-object v0
.end method

.method public static setCameraAccessor(Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "newAccessor":Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;
    sget-object v1, Lcom/sun/javafx/scene/CameraHelper;->cameraAccessor:Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 63
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/scene/CameraHelper;->cameraAccessor:Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;

    .line 64
    return-void
.end method
