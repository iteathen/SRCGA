.class Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$1;
.super Ljavafx/scene/layout/StackPane;
.source "TitledPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;-><init>(Ljavafx/scene/control/TitledPane;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)V
    .locals 8

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 86
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$1;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "content"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 88
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->access$000(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/scene/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$1;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->access$000(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/scene/Node;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 91
    :cond_0
    return-void
.end method
