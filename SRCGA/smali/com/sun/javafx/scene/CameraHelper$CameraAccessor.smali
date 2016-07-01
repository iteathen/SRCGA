.class public interface abstract Lcom/sun/javafx/scene/CameraHelper$CameraAccessor;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/CameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraAccessor"
.end annotation


# virtual methods
.method public abstract pickNodeXYPlane(Ljavafx/scene/Camera;Ljavafx/scene/Node;DD)Ljavafx/geometry/Point2D;
.end method

.method public abstract pickProjectPlane(Ljavafx/scene/Camera;DD)Ljavafx/geometry/Point3D;
.end method

.method public abstract project(Ljavafx/scene/Camera;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;
.end method
