.class Lcom/sun/javafx/scene/control/skin/FXVKSkin$5;
.super Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;
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
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 1137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p2

    .local v2, "defaultText":Ljava/lang/String;
    move-object v3, p3

    .local v3, "toggledText":Ljava/lang/String;
    move-object v4, p4

    .local v4, "id":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    return-void
.end method


# virtual methods
.method protected release()V
    .locals 3

    .prologue
    .line 1139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$5;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$702(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Z)Z

    move-result v1

    .line 1140
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1200(Z)V

    .line 1142
    sget-boolean v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkAdjustWindow:Z

    if-eqz v1, :cond_0

    .line 1143
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$5;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V

    .line 1145
    :cond_0
    return-void
.end method
