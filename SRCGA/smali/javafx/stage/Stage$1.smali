.class final Ljavafx/stage/Stage$1;
.super Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$1;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getStages()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/Stage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$1;
    # getter for: Ljavafx/stage/Stage;->stages:Ljavafx/collections/ObservableList;
    invoke-static {}, Ljavafx/stage/Stage;->access$000()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage$1;
    return-object v0
.end method
