.class public abstract Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;
.super Ljava/lang/Object;
.source "FXRobotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/robot/impl/FXRobotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FXRobotSceneAccessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getChildren(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Parent;",
            ")",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end method

.method public abstract processKeyEvent(Ljavafx/scene/Scene;Ljavafx/scene/input/KeyEvent;)V
.end method

.method public abstract processMouseEvent(Ljavafx/scene/Scene;Ljavafx/scene/input/MouseEvent;)V
.end method

.method public abstract processScrollEvent(Ljavafx/scene/Scene;Ljavafx/scene/input/ScrollEvent;)V
.end method

.method public abstract renderToImage(Ljavafx/scene/Scene;Ljava/lang/Object;)Ljava/lang/Object;
.end method
