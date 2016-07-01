.class Ljavafx/scene/control/HeavyweightDialog$1;
.super Ljavafx/stage/Stage;
.source "HeavyweightDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/HeavyweightDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/HeavyweightDialog;


# direct methods
.method constructor <init>(Ljavafx/scene/control/HeavyweightDialog;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/HeavyweightDialog;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/HeavyweightDialog$1;->this$0:Ljavafx/scene/control/HeavyweightDialog;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/stage/Stage;-><init>()V

    return-void
.end method


# virtual methods
.method public centerOnScreen()V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog$1;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/HeavyweightDialog$1;->getOwner()Ljavafx/stage/Window;

    move-result-object v2

    move-object v1, v2

    .line 55
    .local v1, "owner":Ljavafx/stage/Window;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 56
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog$1;->this$0:Ljavafx/scene/control/HeavyweightDialog;

    invoke-static {v2}, Ljavafx/scene/control/HeavyweightDialog;->access$000(Ljavafx/scene/control/HeavyweightDialog;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/HeavyweightDialog$1;->getWidth()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/HeavyweightDialog$1;->getHeight()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 59
    move-object v2, v0

    invoke-super {v2}, Ljavafx/stage/Stage;->centerOnScreen()V

    goto :goto_0
.end method
