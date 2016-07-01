.class public abstract Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;
.super Ljava/lang/Object;
.source "FXRobotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/robot/impl/FXRobotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FXRobotInputAccessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createKeyEvent(Ljavafx/event/EventType;Ljavafx/scene/input/KeyCode;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljavafx/scene/input/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/KeyEvent;",
            ">;",
            "Ljavafx/scene/input/KeyCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ)",
            "Ljavafx/scene/input/KeyEvent;"
        }
    .end annotation
.end method

.method public abstract createMouseEvent(Ljavafx/event/EventType;IIIILjavafx/scene/input/MouseButton;IZZZZZZZZ)Ljavafx/scene/input/MouseEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/MouseEvent;",
            ">;IIII",
            "Ljavafx/scene/input/MouseButton;",
            "IZZZZZZZZ)",
            "Ljavafx/scene/input/MouseEvent;"
        }
    .end annotation
.end method

.method public abstract createScrollEvent(Ljavafx/event/EventType;IILjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;ILjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;IIIIIZZZZ)Ljavafx/scene/input/ScrollEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;II",
            "Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;",
            "I",
            "Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;",
            "IIIIIZZZZ)",
            "Ljavafx/scene/input/ScrollEvent;"
        }
    .end annotation
.end method

.method public abstract getCodeForKeyCode(Ljavafx/scene/input/KeyCode;)I
.end method

.method public abstract getKeyCodeForCode(I)Ljavafx/scene/input/KeyCode;
.end method
