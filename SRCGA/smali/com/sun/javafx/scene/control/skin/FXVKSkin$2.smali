.class Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;
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
    .line 1065
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;
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

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

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
    .locals 2

    .prologue
    .line 1067
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->pressShift()V

    .line 1068
    return-void
.end method

.method public update(ZZZ)V
    .locals 6

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;
    move v1, p1

    .local v1, "capsDown":Z
    move v2, p2

    .local v2, "shiftDown":Z
    move v3, p3

    .local v3, "isSymbol":Z
    move v4, v3

    if-eqz v4, :cond_0

    .line 1072
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;->setDisable(Z)V

    .line 1073
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;->setVisible(Z)V

    .line 1085
    :goto_0
    return-void

    .line 1075
    :cond_0
    move v4, v1

    if-eqz v4, :cond_1

    .line 1076
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;->icon:Ljavafx/scene/layout/Region;

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "shift-icon"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 1077
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;->icon:Ljavafx/scene/layout/Region;

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "capslock-icon"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1082
    :goto_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;->setDisable(Z)V

    .line 1083
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;->setVisible(Z)V

    goto :goto_0

    .line 1079
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;->icon:Ljavafx/scene/layout/Region;

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "capslock-icon"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 1080
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;->icon:Ljavafx/scene/layout/Region;

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "shift-icon"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1
.end method
