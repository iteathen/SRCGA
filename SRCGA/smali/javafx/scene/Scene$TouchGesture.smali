.class Ljavafx/scene/Scene$TouchGesture;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchGesture"
.end annotation


# instance fields
.field finished:Z

.field sceneCoords:Ljavafx/geometry/Point2D;

.field screenCoords:Ljavafx/geometry/Point2D;

.field target:Ljavafx/event/EventTarget;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1734
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TouchGesture;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Scene$1;)V
    .locals 3

    .prologue
    .line 1734
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TouchGesture;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Scene$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene$TouchGesture;-><init>()V

    return-void
.end method
