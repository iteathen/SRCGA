.class public abstract Lcom/sun/javafx/robot/FXRobot;
.super Ljava/lang/Object;
.source "FXRobot.java"


# instance fields
.field protected autoWait:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobot;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/robot/FXRobot;->autoWait:Z

    return-void
.end method


# virtual methods
.method public abstract getPixelColor(II)I
.end method

.method public abstract getSceneCapture(IIII)Lcom/sun/javafx/robot/FXRobotImage;
.end method

.method public abstract keyPress(Ljavafx/scene/input/KeyCode;)V
.end method

.method public abstract keyRelease(Ljavafx/scene/input/KeyCode;)V
.end method

.method public abstract keyType(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V
.end method

.method public mouseClick(Ljavafx/scene/input/MouseButton;)V
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobot;
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/robot/FXRobot;->mouseClick(Ljavafx/scene/input/MouseButton;I)V

    .line 167
    return-void
.end method

.method public abstract mouseClick(Ljavafx/scene/input/MouseButton;I)V
.end method

.method public abstract mouseDrag(Ljavafx/scene/input/MouseButton;)V
.end method

.method public abstract mouseMove(II)V
.end method

.method public mousePress(Ljavafx/scene/input/MouseButton;)V
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobot;
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/robot/FXRobot;->mousePress(Ljavafx/scene/input/MouseButton;I)V

    .line 146
    return-void
.end method

.method public abstract mousePress(Ljavafx/scene/input/MouseButton;I)V
.end method

.method public mouseRelease(Ljavafx/scene/input/MouseButton;)V
    .locals 5

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobot;
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/robot/FXRobot;->mouseRelease(Ljavafx/scene/input/MouseButton;I)V

    .line 158
    return-void
.end method

.method public abstract mouseRelease(Ljavafx/scene/input/MouseButton;I)V
.end method

.method public abstract mouseWheel(I)V
.end method

.method public setAutoWaitForIdle(Z)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobot;
    move v1, p1

    .local v1, "wait":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/robot/FXRobot;->autoWait:Z

    .line 51
    return-void
.end method

.method public abstract waitForIdle()V
.end method
