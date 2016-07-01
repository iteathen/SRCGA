.class Lcom/sun/javafx/scene/control/skin/FXVKSkin$4;
.super Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;
.source "FXVKSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/FXVKSkin;->loadBoard(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;)V
    .locals 11

    .prologue
    .line 1096
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p2

    .local v2, "letter":Ljava/lang/String;
    move-object v3, p3

    .local v3, "c":Ljava/lang/String;
    move-object v4, p4

    .local v4, "code":Ljavafx/scene/input/KeyCode;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    return-void
.end method


# virtual methods
.method protected press()V
    .locals 6

    .prologue
    .line 1098
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$4;
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE:D
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$2800()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1099
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->clearShift()V

    .line 1100
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$4;->sendKeyEvents()V

    .line 1101
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$2902(Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;)Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;

    move-result-object v2

    .line 1102
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatInitialDelay:Ljavafx/animation/Timeline;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$3000()Ljavafx/animation/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 1106
    :goto_0
    return-void

    .line 1104
    :cond_0
    move-object v2, v1

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->press()V

    goto :goto_0
.end method

.method protected release()V
    .locals 6

    .prologue
    .line 1108
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$4;
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE:D
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$2800()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1109
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatInitialDelay:Ljavafx/animation/Timeline;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$3000()Ljavafx/animation/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->stop()V

    .line 1110
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatSubsequentDelay:Ljavafx/animation/Timeline;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$3100()Ljavafx/animation/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->stop()V

    .line 1114
    :goto_0
    return-void

    .line 1112
    :cond_0
    move-object v2, v1

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->release()V

    goto :goto_0
.end method
