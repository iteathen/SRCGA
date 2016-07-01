.class public Lcom/sun/javafx/robot/FXRobotFactory;
.super Ljava/lang/Object;
.source "FXRobotFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobotFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRobot(Ljavafx/scene/Scene;)Lcom/sun/javafx/robot/FXRobot;
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    new-instance v1, Lcom/sun/javafx/robot/impl/BaseFXRobot;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/robot/impl/BaseFXRobot;-><init>(Ljavafx/scene/Scene;)V

    move-object v0, v1

    .end local v0    # "scene":Ljavafx/scene/Scene;
    return-object v0
.end method
